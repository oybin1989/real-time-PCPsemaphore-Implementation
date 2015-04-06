/*! \file thread1.c
    \brief A thread that toggles the GREEN LED.
		\details Initialize and implement thread
*/

//TWP replaced with Darren's version

#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

osThreadDef (thread1, osPriorityAboveNormal, 300);  ///< thread definition

osThreadId tid_thread1;     ///< thread id
void task1(void);

/*! 
  \brief Initializing thread1
  */
int Init_thread1 (void) 
{
    tid_thread1 = osThreadCreate (osThread(thread1), NULL);
    if(!tid_thread1) return(-1);

    return(0);
}

/*!  
  \brief Terminating thread1
  */
int Terminate_thread1 (void) 
{	
    if (osThreadTerminate(tid_thread1) != osOK)
    {
        return(-1);
    }

    return(0);
}

/*! 
  \brief Thread definition for thread 1.
  \param argument A pointer to the list of arguments.
  */
void thread1 (void const *argument) 
{	
    while (1) 
    {	
//TWP        int count = 0;
        printf("thread1 acquiring semaphore 1\n\r");
				if (osSemaphoreWait (sid_Semaphore1, osWaitForever) >= 0 )
        {
            printf("thread1 acquired semaphore 1\n\r");
					  //Blink green LED
            task1(); // thread code 
            count1Sec();
            task1();
            count1Sec();

            printf("thread1 releasing semaphore 0\n\r");
					  if (osSemaphoreRelease (sid_Semaphore0) != osOK)
            {
                printf("thread1 failed to release semaphore 0\n\r");
                stop_cpu;
            }
        }
        else
        {
            printf("thread1 failed to acquire semaphore 1\n\r");
            stop_cpu;
        }
				//TWPV1 take out for now ...
        // osThreadSetPriority(tid_thread1, osPriorityLow);
        // osThreadYield();

        // This should terminate the current thread1 thread		
        //TWPV1 take out for now ...
				/*
				if (Terminate_thread1() != 0)
        {
            stop_cpu;
        }
				*/
    }
}

// -------------------------------------------------------------------------
/*! 
  \brief Toggle LED #1
  */
void task1(void)
{
    protected_LED_blink(LED1);
}
