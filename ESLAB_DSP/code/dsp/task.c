/*  ----------------------------------- DSP/BIOS Headers            */
#include <std.h>
#include <gbl.h>
#include <log.h>
#include <swi.h>
#include <sys.h>
#include <tsk.h>
#include <pool.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <failure.h>
#include <dsplink.h>
#include <platform.h>
#include <notify.h>
#include <bcache.h>
/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>
#include <task.h>

#define MSG_DSP_INITIALIZED 	((Uint32)1)
#define MSG_DSP_DONE			((Uint32)2)
#define MSG_DSP_MEMORY_ERROR	((Uint32)3)

#include <stdlib.h>
#include <stdint.h>

extern Uint16 MPCSXFER_BufferSize ;

int start = 0; // starting row
unsigned char* buf;		//image in the pool
Uint32 windowsize, length;
Uint32 rows,cols;
//unsigned char* image;	//image local
//unsigned short int *kernel;

static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info) ;

Int Task_create (Task_TransferInfo ** infoPtr)
{
    Int status    = SYS_OK ;
    Task_TransferInfo * info = NULL ;

    /* Allocate Task_TransferInfo structure that will be initialized
     * and passed to other phases of the application */
    if (status == SYS_OK) 
	{
        *infoPtr = MEM_calloc (DSPLINK_SEGID,
                               sizeof (Task_TransferInfo),
                               0) ; /* No alignment restriction */
        if (*infoPtr == NULL) 
		{
            status = SYS_EALLOC ;
        }
        else 
		{
            info = *infoPtr ;
        }
    }

    /* Fill up the transfer info structure */
    if (status == SYS_OK) 
	{
        info->dataBuf       = NULL ; /* Set through notification callback. */
        info->bufferSize    = MPCSXFER_BufferSize ;
        SEM_new (&(info->notifySemObj), 0) ;
    }

    /*
     *  Register notification for the event callback to get control and data
     *  buffer pointers from the GPP-side.
     */
    if (status == SYS_OK) 
	{
        status = NOTIFY_register (ID_GPP,
                                  MPCSXFER_IPS_ID,
                                  MPCSXFER_IPS_EVENTNO,
                                  (FnNotifyCbck) Task_notify,
                                  info) ;
        if (status != SYS_OK) 
		{
            return status;
        }
    }

    /*
     *  Send notification to the GPP-side that the application has completed its
     *  setup and is ready for further execution.
     */
    if (status == SYS_OK) 
	{
        status = NOTIFY_notify (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (Uint32) 0) ; /* No paywindowsize to be sent. */
        if (status != SYS_OK) 
		{
            return status;
        }
    }

    /*
     *  Wait for the event callback from the GPP-side to post the semaphore
     *  indicating receipt of the data buffer pointer and image width and height.
     */
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;/*------- Data addrs -------*/
    //SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;/*------- Window size ------*/
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;/*------- Rows -------------*/
	SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;/*------- Cols -------------*/

    return status ;
}
int po;
Int Task_execute (Task_TransferInfo * info)
{
    /*--------- Wait GPP command to start processing ------*/
	SEM_pend (&(info->notifySemObj), SYS_FOREVER);

	/*---------------- Invalidate cache -------------------*/
    BCACHE_inv ((Ptr)buf, length, TRUE) ;

	/*-------------- Decode buf message -------------------*/
	//NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)cols);
		
	
	//kernel = (unsigned short int*) malloc(sizeof(unsigned short int)*windowsize);
	//memcpy(kernel,buf,2*windowsize);
	
	//memcpy(image, &buf[windowsize], length);
	
	//call the functionality to be performed by dsp
	
    gaussian_smooth(buf, rows, cols);
	//memcpy(buf,image,length);
	// writeback + invalidate cache
    BCACHE_wb ((Ptr)buf, length*2, TRUE) ;

	//notify that we are done
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)0);


    return SYS_OK;
}

Int Task_delete (Task_TransferInfo * info)
{
    Int    status     = SYS_OK ;
    /*
     *  Unregister notification for the event callback used to get control and
     *  data buffer pointers from the GPP-side.
     */
    status = NOTIFY_unregister (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (FnNotifyCbck) Task_notify,
                                info) ;

    /* Free the info structure */
    MEM_free (DSPLINK_SEGID,
              info,
              sizeof (Task_TransferInfo)) ;
    info = NULL ;

    return status ;
}


static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    static int count = 0;
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;

    (Void) eventNo ; /* To avoid compiler warning. */

    count++;
    if (count==1) {
        buf =(unsigned char*)info ;
    }
    /*if (count==2) {
        windowsize = (Uint32)info;
    }*/
	/*---------- Rows and colls  -----------------*/
	if (count==2) {
        rows = (Uint32)info;
    }
	if (count==3) {
        cols = (Uint32)info;
		length = rows*cols;
    }
	

    SEM_post(&(mpcsInfo->notifySemObj));
}



/*******************************************************************************
* PROCEDURE: gaussian_smooth
* PURPOSE: Blur an image with a gaussian filter.
* NAME: Mike Heath
* DATE: 2/15/96
*******************************************************************************/

void gaussian_smooth(unsigned char *image, int rows, int cols)
{
    int r, c, rr, cc,     /* Counter variables. */
        /*windowsize,        Dimension of the gaussian kernel. */
        center;           /* Half of the windowsize. */
    unsigned int dot,     /* Dot product summing variable. */
          sum,            /* Sum of the kernel weights variable. */
          temp;

    unsigned short int* smoothedim;
    unsigned char * tmp;

    /* A one dimensional gaussian kernel, normalized to fixed point. */
    static unsigned short int kernel[] = 
		{ 317, 898, 2165, 4448, 7787,
		  7787, 11617, 14768, 15998, 14768,
		  11617, 7787, 4448, 2165, 898, 317
		};
	
    windowsize = 15;



    /****************************************************************************
    * Create a 1-dimensional gaussian smoothing kernel.
    ****************************************************************************/
    start = 1*rows/5;
    center = windowsize / 2;

    /****************************************************************************
    * Allocate a temporary buffer image and the smoothed image.
    ****************************************************************************/
   if((tmp = (unsigned char *) malloc((rows-start)*cols* sizeof(unsigned char))) == NULL)
    {
        // out of memory
        NOTIFY_notify (ID_GPP,
                       MPCSXFER_IPS_ID,
                       MPCSXFER_IPS_EVENTNO,
                       MSG_DSP_MEMORY_ERROR);
    }
	
    smoothedim = (unsigned short *) image;
	
    /****************************************************************************
    * Blur in the x - direction.
    ****************************************************************************/
	if (start > 0){
		for (r=0; r<start; r++)
		{
			for(c=0; c<cols; c++)
			{
				tmp[r*cols+c] = 0;
			}
		}	
	}   

   for(r=start; r<rows; r++)
    {
        for(c=0; c<cols; c++)
        {
            dot = 0;
            sum = 0;
            for(cc=(-center); cc<=center; cc++)
            {
                if(((c+cc) >= 0) && ((c+cc) < cols))
                {
                    dot += image[r*cols+(c+cc)] * kernel[center+cc];
                    sum += kernel[center+cc];
                }
            }
            tmp [(r-start)*cols+c] = dot/sum;
        }
    }
	/*NOTIFY_notify (ID_GPP,
                       MPCSXFER_IPS_ID,
                       MPCSXFER_IPS_EVENTNO,
                       102);
	*/
    /****************************************************************************
    * Blur in the y - direction.
    ****************************************************************************/
    for(c=0; c<cols; c++)
    {
        for(r=0; r<rows-start; r++)
        {
            sum = 0;
            dot = 0;
            for(rr=(-center); rr<=center; rr++)
            {
                if(((r+rr) >= 0) && ((r+rr) < rows))
                {
                    dot += tmp[(r+rr)*cols+c] * kernel[center+rr];
                    sum += kernel[center+rr];
                }
            }
            temp = ((dot*90/sum));
            smoothedim[(r+start)*cols+c] = temp;
        }
    }
	/*NOTIFY_notify (ID_GPP,
                       MPCSXFER_IPS_ID,
                       MPCSXFER_IPS_EVENTNO,
                       103);
	*/
					   
    free(tmp);
}
