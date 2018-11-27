/** ============================================================================
 *  @file   system_os.c
 *
 *  @desc   handles printing and measuring functions
 *  ==========================================================================*/
 /*  ----------------------------------- OS Specific Headers           */
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <unistd.h>
#include <time.h>
#include <sys/types.h>
#include <sys/time.h>
#include <sys/stat.h>

/*  ----------------------------------- DSP/BIOS Link                 */
#include <dsplink.h>

/*  ----------------------------------- Application Header            */
#include <system_os.h>

#if defined (__cplusplus)
extern "C"
{
#endif /* defined (__cplusplus) */

#if defined (PROFILE)
    STATIC Uint32 startUsecTime = 0;		// starting time
    STATIC Uint32 endUsecTime = 0;			// ending time
    STATIC struct timeval initialUsecTime;	// reset time
#endif /* if defined (PROFILE) */

    /** ============================================================================
     *  SYSTEM_0Print()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_0Print(Char8* str)
    {
        printf(str);
    }

    /** ============================================================================
     *  SYSTEM_1Print()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_1Print(Char8* str, Uint32 arg)
    {
        printf(str, arg);
    }

    /** ============================================================================
     *  SYSTEM_2Print()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_2Print(Char8* str, Uint32 arg1, Uint32 arg2)
    {
        printf(str, arg1, arg2);
    }

    /** ============================================================================
     *  SYSTEM_1Sprint()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_1Sprint(Char8* str, Char8* format, Uint32 arg)
    {
        sprintf(str, format, arg);
    }

    /** ============================================================================
     *  SYSTEM_2Sprint()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_2Sprint(Char8* str, Char8* format, Uint32 arg1, Uint32 arg2)
    {
        sprintf(str, format, arg1, arg2);
    }

    /** ============================================================================
     *  SYSTEM_Sleep()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_Sleep(Uint32 uSec)
    {
        usleep(uSec);
    }

    /** ============================================================================
     *  SYSTEM_Atoi
     *  ==========================================================================*/
    Uint32 SYSTEM_Atoi(Char8* str)
    {
        return(atoi(str));
    }

    /** ============================================================================
     *  SYSTEM_Atoll()
     *  ==========================================================================*/
    NORMAL_API Uint32 SYSTEM_Atoll(Char8* str)
    {
        Uint32 val = 0;
        val = strtoll(str, NULL, 16);
        return val;
    }

#if defined (PROFILE)
    /** ============================================================================
     *  SYSTEM_ResetUsecTime()
     *  ==========================================================================*/
    STATIC Void SYSTEM_ResetUsecTime(Void)
    {
        Int32 osStatus = 0;

        osStatus = gettimeofday(&initialUsecTime, NULL);
        if (osStatus != 0)
        {
            SYSTEM_0Print("ResetUsecTime error - System call gettimeofday returned error.\n");
        }
    }

    /** ============================================================================
     *  SYSTEM_GetStartTime()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_GetStartTime(Void)
    {
        Int32 osStatus = 0;
        struct timeval currentTime;

        SYSTEM_ResetUsecTime();

        osStatus = gettimeofday(&currentTime, NULL);
        if (osStatus != 0)
        {
            SYSTEM_0Print("GetStartTime error - System call gettimeofday returned error.\n");
        }
        else
        {
            startUsecTime = (((currentTime.tv_sec - initialUsecTime.tv_sec) * 1000000) + (currentTime.tv_usec - initialUsecTime.tv_usec));
        }
    }

    /** ============================================================================
     *  SYSTEM_GetEndTime()
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_GetEndTime(Void)
    {
        Int32 osStatus = 0;
        struct timeval currentTime;

        osStatus = gettimeofday(&currentTime, NULL);
        if (osStatus != 0)
        {
            SYSTEM_0Print("GetEndTime error - System call gettimeofday returned error.\n");
        }
        else
        {
            endUsecTime = (((currentTime.tv_sec - initialUsecTime.tv_sec) * 1000000) + (currentTime.tv_usec - initialUsecTime.tv_usec));
        }
    }

    /** ============================================================================
     *  SYSTEM_GetProfileInfo
     *  ==========================================================================*/
    NORMAL_API Void SYSTEM_GetProfileInfo(Void)
    {
        Uint32 usecTimeTaken = 0;
        Real32 numSeconds = 0;

		// calculate number of usec
        usecTimeTaken = (endUsecTime - startUsecTime);

        // calculate number of sec
        numSeconds = (Real32)((Real32) usecTimeTaken / 1000000.0);

        SYSTEM_0Print("measured execution time is: ");
        SYSTEM_1Print("%d seconds ", numSeconds);
        SYSTEM_1Print("and %d microseconds.\n", (Real32)(usecTimeTaken % 1000000));

        return;
    }
#endif /* if defined (PROFILE) */

#if defined (__cplusplus)
}
#endif /* defined (__cplusplus) */