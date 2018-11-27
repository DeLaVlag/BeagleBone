#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>

#include <string.h>
#include <semaphore.h>
/*  ----------------------------------- DSP/BIOS Link                   */
#include <dsplink.h>

/*  ----------------------------------- DSP/BIOS LINK API               */
#include <proc.h>
#include <pool.h>
#include <mpcs.h>
#include <notify.h>

#include "Timer.h"

#include "canny_edge.h"
#include "pgm_io.h"

#if defined (DA8XXGEM)
#include <loaderdefs.h>
#endif

#define LOAD 50
//#define DEBUG

/*  ----------------------------------- Application Header              */
#include <pool_notify.h>
//#include <pool_notify_os.h>

//unsigned char *image;

char filename[32] = "";

#if defined (__cplusplus)
extern "C" {
#endif /* defined (__cplusplus) */


/*  ============================================================================
 *  @const   NUM_ARGS
 *
 *  @desc   Number of arguments specified to the DSP application.
 *  ============================================================================
 */
#define NUM_ARGS                       1

/** ============================================================================
 *  @name   SAMPLE_POOL_ID
 *
 *  @desc   ID of the POOL used for the sample.
 *  ============================================================================
 */
#define SAMPLE_POOL_ID                 0

/** ============================================================================
 *  @name   NUM_BUF_SIZES
 *
 *  @desc   Number of buffer pools to be configured for the allocator.
 *  ============================================================================
 */
#define NUM_BUF_SIZES                  1

/** ============================================================================
 *  @const  NUM_BUF_POOL0
 *
 *  @desc   Number of buffers in first buffer pool.
 *  ============================================================================
 */
#define NUM_BUF_POOL0                  1

/*  ============================================================================
 *  @const   pool_notify_INVALID_ID
 *
 *  @desc   Indicates invalid processor ID within the pool_notify_Ctrl structure.
 *  ============================================================================
 */
#define pool_notify_INVALID_ID            (Uint32) -1

/** ============================================================================
 *  @const  pool_notify_IPS_ID
 *
 *  @desc   The IPS ID to be used for sending notification events to the DSP.
 *  ============================================================================
 */
#define pool_notify_IPS_ID                0

/** ============================================================================
 *  @const  pool_notify_IPS_EVENTNO
 *
 *  @desc   The IPS event number to be used for sending notification events to
 *          the DSP.
 *  ============================================================================
 */
#define pool_notify_IPS_EVENTNO           5


/*  ============================================================================
 *  @name   pool_notify_BufferSize
 *
 *  @desc   Size of buffer to be used for data transfer.
 *  ============================================================================
 */
STATIC Uint32  pool_notify_BufferSize ;

/*  ============================================================================
 *  @name   pool_notify_NumIterations
 *
 *  @desc   Number of iterations of data transfer.
 *  ============================================================================
 */
STATIC Uint32  pool_notify_NumIterations ;

/** ============================================================================
 *  @name   pool_notify_DataBuf
 *
 *  @desc   Pointer to the shared data buffer used by the pool_notify sample
 *          application.
 *  ============================================================================
 */
 /*--------------- Global variables ----------------------------*/
Uint16 * pool_notify_DataBuf = NULL ;
unsigned char *image;  /*---------- Input image declared here */
float *kernel;		/*------------ Image filter --------------*/
int windowsize; 	/*------------ Filer size ----------------*/
int imageSize;
int rows, cols;     /*------ The dimensions of the image----- */


/** ============================================================================
 *  @func   pool_notify_Notify
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating that the DSP-
 *          side application has completed its setup phase.
 *
 *  @arg    eventNo
 *              Event number associated with the callback being invoked.
 *  @arg    arg
 *              Fixed argument registered with the IPS component along with
 *              the callback function.
 *  @arg    info
 *              Run-time information provided to the upper layer by the NOTIFY
 *              component. This information is specific to the IPS being
 *              implemented.
 *
 *  @ret    None.
 *
 *  @enter  None.
 *
 *  @leave  None.
 *
 *  @see    None.
 *  ============================================================================
 */
STATIC Void pool_notify_Notify (Uint32 eventNo, Pvoid arg, Pvoid info) ;

sem_t sem;


/** ============================================================================
 *  @func   pool_notify_Create
 *
 *  @desc   This function allocates and initializes resources used by
 *          this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS pool_notify_Create (	IN Char8 * dspExecutable,
											IN Char8 * strBufferSize,
											IN Uint8   processorId)
{
    DSP_STATUS      status     = DSP_SOK  ;
    Uint32          numArgs    = NUM_ARGS ;
    Void *          dspDataBuf = NULL ;
    Uint32          numBufs [NUM_BUF_SIZES] = {NUM_BUF_POOL0, } ;
    Uint32          size    [NUM_BUF_SIZES] ;
    SMAPOOL_Attrs   poolAttrs ;
    Char8 *         args [NUM_ARGS] ;

	#ifdef DEBUG
    printf ("Entered pool_notify_Create ()\n") ;
	#endif
 
    sem_init(&sem,0,0);

    /*
     *  Create and initialize the proc object.
     */
    status = PROC_setup (NULL) ;

    /*
     *  Attach the Dsp with which the transfers have to be done.
     */
    if (DSP_SUCCEEDED (status)) 
	{
        status = PROC_attach (processorId, NULL) ;
        if (DSP_FAILED (status)) 
		{
            printf ("PROC_attach () failed. Status = [0x%x]\n", (int)status );
        }
    }
    else 
	{
        printf ("PROC_setup () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Open the pool.
     */
    if (DSP_SUCCEEDED (status)) 
	{
        size [0] = pool_notify_BufferSize ;
        poolAttrs.bufSizes      = (Uint32 *) &size ;
        poolAttrs.numBuffers    = (Uint32 *) &numBufs ;
        poolAttrs.numBufPools   = NUM_BUF_SIZES ;
        poolAttrs.exactMatchReq = TRUE ;
        status = POOL_open (POOL_makePoolId(processorId, SAMPLE_POOL_ID), &poolAttrs) ;
        if (DSP_FAILED (status)) 
		{
            printf ("POOL_open () failed. Status = [0x%x]\n", (int)status );
        }
    }

    /*
     *  Allocate the data buffer to be used for the application.
     */
    if (DSP_SUCCEEDED (status)) 
	{
        status = POOL_alloc (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                             (Void **) &pool_notify_DataBuf,
                             pool_notify_BufferSize) ;

        /* Get the translated DSP address to be sent to the DSP. */
        if (DSP_SUCCEEDED (status)) 
		{
            status = POOL_translateAddr (
                                   POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                                         &dspDataBuf,
                                         AddrType_Dsp,
                                         (Void *) pool_notify_DataBuf,
                                         AddrType_Usr) ;

            if (DSP_FAILED (status)) 
			{
                printf ("POOL_translateAddr () DataBuf failed."
                                 " Status = [0x%x]\n",
                                 (int)status) ;
            }
        }
        else 
		{
            printf ("POOL_alloc() DataBuf failed. Status = [0x%x]\n",(int)status);
        }
    }

    /*
     *  Register for notification that the DSP-side application setup is
     *  complete.
     */
    if (DSP_SUCCEEDED (status)) 
	{
        status = NOTIFY_register (processorId,
                                  pool_notify_IPS_ID,
                                  pool_notify_IPS_EVENTNO,
                                  (FnNotifyCbck) pool_notify_Notify,
                                  0/* vladms XFER_SemPtr*/) ;
        if (DSP_FAILED (status)) 
		{
            printf ("NOTIFY_register () failed Status = [0x%x]\n",
                             (int)status) ;
        }
    }

    /*
     *  Load the executable on the DSP.
     */
    if (DSP_SUCCEEDED (status)) {
        args [0] = strBufferSize ;
        {
            status = PROC_load (processorId, dspExecutable, numArgs, args) ;
        }

        if (DSP_FAILED (status)) {
            printf ("PROC_load () failed. Status = [0x%x]\n", (int)status) ;
        }
    }

    /*
     *  Start execution on DSP.
     */
    if (DSP_SUCCEEDED (status)) {
        status = PROC_start (processorId) ;
        if (DSP_FAILED (status)) {
            printf ("PROC_start () failed. Status = [0x%x]\n",
                             (int)status) ;
        }
    }

    /*
     *  Wait for the DSP-side application to indicate that it has completed its
     *  setup. The DSP-side application sends notification of the IPS event
     *  when it is ready to proceed with further execution of the application.
     */
    if (DSP_SUCCEEDED (status)) {
        // wait for initialization 
        sem_wait(&sem);
    }

    /*
     *  Send notifications to the DSP with information about the address of the
     *  control structure and data buffer to be used by the application.
     *
     */
	 /*--------------------Data Physical address ---------------------*/
    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) dspDataBuf);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }

	/*------------------- Window Size ---------------------------------*/
    /*
    status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) windowsize);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () DataBuf failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }
	*/
	/*---------------- Send Rows and cols ----------------------------*/
	status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) rows);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () rows failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }
	
	status = NOTIFY_notify (processorId,
                            pool_notify_IPS_ID,
                            pool_notify_IPS_EVENTNO,
                            (Uint32) cols);
    if (DSP_FAILED (status)) 
	{
        printf ("NOTIFY_notify () cols failed."
                " Status = [0x%x]\n",
                 (int)status) ;
    }
	
	
	#ifdef DEBUG
		printf ("Leaving pool_notify_Create ()\n") ;
	#endif

    return status ;
}

void unit_init(int Size) 
{
	memcpy(pool_notify_DataBuf, &image[0], Size);
}

#include <sys/time.h>

long long get_usec(void);

long long get_usec(void) 
{
  long long r;
  struct timeval t;
  gettimeofday(&t,NULL);
  r=t.tv_sec*1000000+t.tv_usec;
  return r;
}


/** ============================================================================
 *  @func   pool_notify_Execute
 *
 *  @desc   This function implements the execute phase for this application.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API DSP_STATUS pool_notify_Execute (IN Uint32 numIterations, Uint8 processorId)
{
    DSP_STATUS  status    = DSP_SOK ;
	
	/***************** SYNOPSIS *******************
	* Picture is divided in half based on rows 
    * Smooth is excuted for both halves (DSP & GPP)
    * Result is merged and fed to canny_edge_main
    ************************************************/
	
	/*----- variables for gaussian_smooth ----------------------------*/
	short int *smoothedimGPP;
    
	/*------- Determine start/end position for gaussian filters ------*/
	int end = rows*cols; /*-------- image size ---------------*/
	int offst = 20; /*-------------- Number of extra lines to be processed in order to remove negative effect from spliting image to the two processors */
	int halfTheOffset = (offst/2);
	int halfTheRows = (1*rows/5);
	int startGone = 0; /*-------------- Starting position for filtering image on GPP */
	int endGone = halfTheRows + offst; /*------- End position of GPP gaussian filter (half of image plus "offst" rows) */
	int cpySize = (halfTheRows + halfTheOffset)*cols; /*------------- Position gausian filter on GPP is taken under consideration */
	//int restImg = rows*cols-cpySize; /*-------------- What is left from image after cpySize--*/
	int start=0;
	int k = 0;
	unsigned char *buf_dsp;

	#ifdef DEBUG
		printf ("Reserving space for image DSP\n") ;
	#endif

	/* Reserve space for half of the processed image for DSP part */
	smoothedimGPP = (short int *) malloc(rows*cols*sizeof(short int));

	/*----------------------- Start timer--------------------------*/
	start = get_usec();

	/*------------------ Write image in the pool ------------------*/
	POOL_writeback (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
		    pool_notify_DataBuf,
		    pool_notify_BufferSize);

	/*---------Translate virtual to physical address for DSP-------*/
	POOL_translateAddr ( POOL_makePoolId(processorId, SAMPLE_POOL_ID),
		         (void*)&buf_dsp,
		         AddrType_Dsp,
		         (Void *) pool_notify_DataBuf,
		         AddrType_Usr);

	#ifdef DEBUG
		printf ("start dsp\n");
	#endif

	/*---------------- Noyify DSP to start processing -------------*/
	NOTIFY_notify (processorId,pool_notify_IPS_ID,pool_notify_IPS_EVENTNO,1); 

	/*------------------- Filter half image on GPP ----------------*/
	gaussian_smooth(image, smoothedimGPP, endGone, cols, kernel, startGone, windowsize);
	
	#ifdef DEBUG
		printf ("GPP part done, synch with DSP\n") ;
	#endif

	/*--------------------- Synchronize with DSP -----------------*/
	sem_wait(&sem);

	#ifdef DEBUG
		printf("DSP-GPP synched \n");
	#endif	

	/*--------------------- Read DSP result from the pool ---------*/
	POOL_invalidate (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
		    pool_notify_DataBuf,
		    pool_notify_BufferSize);
		    
				
	/*------------ Merging dsp and gpp results-------------------------
	memcopy per byte but we use short ints which are 16 bits (2bytes)
	therefore *2 for the size to copy
	------------------------------------------------------------------*/
	// memcpy(&smoothedimGPP[cpySize], &pool_notify_DataBuf[cpySize], restImg*2);
	for (k=cpySize; k<end; k++) 
	{ 
		smoothedimGPP[k] = pool_notify_DataBuf[k];
	} 

	/*---------------- Complete Canny edge on GPP -----------------*/
	/*---------- RUN canny edge detection for any file ------------*/
	canny_edge_main(2, filename, image, rows, cols, smoothedimGPP); 
	    
	/*----------------Print excecution time -----------------------*/
	printf("Sum execution time %lld us.\n", get_usec()-start);

	return status ;
}


/** ============================================================================
 *  @func   pool_notify_Delete
 *
 *  @desc   This function releases resources allocated earlier by call to
 *          pool_notify_Create ().
 *          During cleanup, the allocated resources are being freed
 *          unconditionally. Actual applications may require stricter check
 *          against return values for robustness.
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void pool_notify_Delete (Uint8 processorId)
{
    DSP_STATUS status    = DSP_SOK ;
    DSP_STATUS tmpStatus = DSP_SOK ;

	#ifdef DEBUG
    printf ("Entered pool_notify_Delete ()\n") ;
	#endif

    /*
     *  Stop execution on DSP.
     */
    status = PROC_stop (processorId) ;
    if (DSP_FAILED (status)) {
        printf ("PROC_stop () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Unregister for notification of event registered earlier.
     */
    tmpStatus = NOTIFY_unregister (processorId,
                                   pool_notify_IPS_ID,
                                   pool_notify_IPS_EVENTNO,
                                   (FnNotifyCbck) pool_notify_Notify,
                                   0/* vladms pool_notify_SemPtr*/) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("NOTIFY_unregister () failed Status = [0x%x]\n",
                         (int)status) ;
    }

    /*
     *  Free the memory allocated for the data buffer.
     */
    tmpStatus = POOL_free (POOL_makePoolId(processorId, SAMPLE_POOL_ID),
                           (Void *) pool_notify_DataBuf,
                           pool_notify_BufferSize) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_free () DataBuf failed. Status = [0x%x]\n",
                         (int)status) ;
    }

    /*
     *  Close the pool
     */
    tmpStatus = POOL_close (POOL_makePoolId(processorId, SAMPLE_POOL_ID)) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("POOL_close () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Detach from the processor
     */
    tmpStatus = PROC_detach  (processorId) ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("PROC_detach () failed. Status = [0x%x]\n", (int)status) ;
    }

    /*
     *  Destroy the PROC object.
     */
    tmpStatus = PROC_destroy () ;
    if (DSP_SUCCEEDED (status) && DSP_FAILED (tmpStatus)) {
        status = tmpStatus ;
        printf ("PROC_destroy () failed. Status = [0x%x]\n", (int)status) ;
    }

	#ifdef DEBUG
    printf ("Leaving pool_notify_Delete ()\n") ;
	#endif
}


/** ============================================================================
 *  @func   pool_notify_Main
 *
 *  @desc   Entry point for the application
 *
 *  @modif  None
 *  ============================================================================
 */
NORMAL_API Void pool_notify_Main (IN Char8 * dspExecutable, IN Char8 * imagename)
{
    DSP_STATUS status       = DSP_SOK ;
    Uint8      processorId  = 0 ;
	strcpy(filename, imagename);//can this be removed? directly add imagename
	char strbuf[32];

	#ifdef DEBUG
		printf ("========== Sample Application : pool_notify ==========\n") ;
	#endif

    if (   (dspExecutable != NULL) && (filename != NULL)   ) 
	{
		/*---------------- Loading the image -------------------------*/
		if(read_pgm_image(filename, &image, &rows, &cols) == 0)
		{
			fprintf(stderr, "Error reading the input image, %s.\n", filename);
			exit(1);
		}
		#ifdef DEBUG
			printf("Rows x Cols %d\n",rows*cols);
		#endif
		
		/*-------------------- Creating kernel -----------------------*/
		make_gaussian_kernel(2.5, &kernel, &windowsize);
				
		/**------------------------------------------------------------ 
		* Set buffer size = image size + //kernel size
		*------------------------------------------------------------*/
        pool_notify_BufferSize = DSPLINK_ALIGN ( (rows * cols) * sizeof(short int), DSPLINK_BUF_ALIGN) ;
		
		#ifdef DEBUG
			printf(" Allocated a buffer of %d bytes\n",(int)pool_notify_BufferSize );
		#endif
		
		sprintf(strbuf, "%lu", pool_notify_BufferSize);
        processorId = 0 ;
        if (pool_notify_BufferSize == 0) 
		{
            status = DSP_EINVALIDARG ;
            printf ("ERROR! Invalid arguments specified for  ");
            printf ("     Buffer size    = %d\n", (int)pool_notify_BufferSize) ;
        }

        /*
         *  Specify the dsp executable file name and the buffer size for
         *  pool_notify creation phase.
         */
        status = pool_notify_Create (dspExecutable,
                                     strbuf,
                                     0) ;

        if (DSP_SUCCEEDED (status)) 
		{
			/*-------- Copy to pool with writeback ----------------*/
			unit_init(rows*cols);/*Copy image in pool_notify_DataBuf */
            status = pool_notify_Execute (pool_notify_NumIterations, 0) ;
        }

         pool_notify_Delete (processorId) ;
        
    }
    else 
	{
        status = DSP_EINVALIDARG ;
        printf ("ERROR! Invalid arguments specified for  "
                         "pool_notify application\n") ;
    }
	#ifdef DEBUG
    printf ("====================================================\n") ;
	#endif
}

/** ----------------------------------------------------------------------------
 *  @func   pool_notify_Notify
 *
 *  @desc   This function implements the event callback registered with the
 *          NOTIFY component to receive notification indicating that the DSP-
 *          side application has completed its setup phase.
 *
 *  @modif  None
 *  ----------------------------------------------------------------------------
 */
STATIC Void pool_notify_Notify (Uint32 eventNo, Pvoid arg, Pvoid info)
{
	#ifdef DEBUG
    printf("Notification %8d \n", (int)info);
	#endif
    /* Post the semaphore. */
    if((int)info==0) 
	{
        sem_post(&sem);
    } 
    else 
	{
        printf(" Result on DSP is %d \n", (int)info);
    }
}


#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */
