#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"
osThreadId tid_thread5;          ///osThreadId pointer point to where tid_thread5 pointer points.	
	
osThreadDef (thread5, osPriorityLow, 300);  ///to creat a thread(name, priority, stack size)
extern int getCurrentCeiling();
void task0(void)
{ 
    protected_LED_blink(LED0);
}


int Init_thread5 (void) 
{
    tid_thread5 = osThreadCreate (osThread(thread5), NULL);

    if (tid_thread5 == NULL) 
    {
        return(-1);
    }
    printf("created thread5\n\r");
    return(0);
}

int Terminate_thread5 (void) 
{	

    if (osThreadTerminate(tid_thread5) != osOK)
    {
        return(-1);
    }

    return(0);
}
void thread5 (void const *argument) 
{
		osThreadId curr_th = osThreadGetId();
		printf("Task 5: Hello!  . My priority is %d\n\r",curr_th->priority);
		printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
		printf("Task 5: Locking Server 1\n\r");
		if (osPcpSemaphoreWait (sid_Semaphore1, osWaitForever) >= 0 ) //Used for acquring a server
        {  
						
					  printf("Task 5: Server 1 locked . My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						osThreadSetPriority(tid_thread4,osPriorityBelowNormal);
						printf("Task 5: I am in Server 1 . My priority is %d\n\r",curr_th->priority);
						osThreadSetPriority(tid_thread3,osPriorityNormal);
						printf("Task 5: I am in Server 1 . My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						osThreadSetPriority(tid_thread1,osPriorityHigh);
						printf("Task 5: I am in Server 1 . My priority is %d\n\r",curr_th->priority);
						printf("Task 5: unlock Server 1 . My priority is %d\n\r",curr_th->priority);
						osPcpSemaphoreRelease (sid_Semaphore1);						
						printf("Task 5: My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
												
            
        }
     else
        {
            printf("Task 5 failed to lock Server 1 \n\r");
            stop_cpu;
        }

						
		
		printf("Task 5: Bye!\n\r");			
}
