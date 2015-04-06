/*! \file thread0.c
    \brief A thread that toggles the RED LED.
		\details Initialize and implement thread
*/

#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

//TWP this creates an instance of a Thread Definition structure and generates a name for it that includes "thread0"
// TWP the striuct is initialized with pointer the thread0 function, High priority, and 300 byte stack
osThreadDef (thread0, osPriorityHigh, 300);  ///< thread definition

//TWP just a variable for later use
osThreadId tid_thread0;          ///< thread0 id

// just a prototype ... needed by thread0 function
void task0(void);

/*! \fn int Init_thread0 (void)
  \brief Initializing thread0
  */
int Init_thread0 (void) 
{
		//TWP osThread(thread0) defines a pointer value to the thread's Definition struct (resolves to the generated name)
    tid_thread0 = osThreadCreate (osThread(thread0), NULL);

    if (tid_thread0 == NULL) 
    {
        return(-1);
    }
    printf("created thread0\n\r");
    return(0);
}

/*! \fn int Terminate_thread0 (void) 
  \brief Terminating thread0
  \return 0=successful; -1=failure
  */
int Terminate_thread0 (void) 
{	

    if (osThreadTerminate(tid_thread0) != osOK)
    {
        return(-1);
    }

    return(0);
}

/*! \fn void thread0 (void const *argument)
  \brief Thread definition for thread 0.
  \param argument A pointer to the list of arguments.
  */
void thread0 (void const *argument) 
{   uint32_t i;
    for ( i = 0; i < 5; i++ ) // while (1) 
    {	
//			  printf("thread0 acquiring semaphore 0\n\r");
        if (osSemaphoreWait (sid_Semaphore0, osWaitForever) >= 0 ) 
        {                   
					
					  printf("thread0 acquired semaphore 0\n\r");
   
            //Blink the red LED
            task0(); // thread code 
            count1Sec();
            task0();
            count1Sec();
            
 					  printf("thread0 releasing semaphore 1\n\r");
            if (osSemaphoreRelease (sid_Semaphore1) != osOK)
            {
                //Failed to release the semaphore
                printf("thread0 failed to release semaphore 1\n\r");
                stop_cpu;
            }
            //Released the semaphore
            printf("thread0 released semaphore 1\n\r");
        }
        else
        {
            //Failed to take the semaphore
            printf("thread0 failed to take semaphore 0\n\r");
            stop_cpu;
        }

        //Lower the priority
        //TWPV1  take these out for now ...
				// osThreadSetPriority(osThreadGetId(), osPriorityLow);
        // osThreadYield();  // suspend thread
    }

    printf("Demo Complete\n\r");
		//TWPV1 ... just to shut the serial port and flashing LED off
		stop_cpu;
}

// -------------------------------------------------------------------------
/*! \fn void task0(void)
  \brief Toggle LED #0
  */
void task0(void)
{ 
    protected_LED_blink(LED0);
}
