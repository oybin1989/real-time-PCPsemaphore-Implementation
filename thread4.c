#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

osThreadDef (thread4, osPriorityIdle, 300);  
extern int getCurrentCeiling();
osThreadId tid_thread4;     

void task1(void)
{ 
    protected_LED_blink(LED1);
}

int Init_thread4 (void) 
{
    tid_thread4 = osThreadCreate (osThread(thread4), NULL);

    if (tid_thread4 == NULL) 
    {
        return(-1);
    }
    printf("created thread4\n\r");
    return(0);
}
int Terminate_thread4 (void) 
{	

    if (osThreadTerminate(tid_thread4) != osOK)
    {
        return(-1);
    }

    return(0);
}
void thread4 (void const *argument) 
{	
		osThreadId curr_th = osThreadGetId();
		printf("Task 4: Hello!. My priority is %d\n\r",curr_th->priority);
			
	  printf("Task 4: Locking Server 2\n\r");
		
		if (osPcpSemaphoreWait (sid_Semaphore2, osWaitForever) >= 0 ) //
        {   
						
					  printf("Task 4: Server 2 locked . My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						printf("Task 4: I am doing something in Server2 . My priority is %d\n\r",curr_th->priority);
						printf("Task 4: Locking Server 1 . My priority is %d\n\r",curr_th->priority);
						if (osPcpSemaphoreWait (sid_Semaphore1, osWaitForever) >= 0 )
						{
							
							printf("Task 4: Server 1 locked  . My priority is %d\n\r",curr_th->priority);
							printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
							printf("Task 4: unlocking Server 1 . My priority is %d\n\r",curr_th->priority);
							osPcpSemaphoreRelease (sid_Semaphore1);
							
						}
						printf("Task 4: unlocking Server 2 . My priority is %d\n\r",curr_th->priority);
						osPcpSemaphoreRelease (sid_Semaphore2);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						printf("Task 4: ByeBye . My priority is %d\n\r",curr_th->priority);
						osThreadSetPriority(tid_thread4,osPriorityIdle);
						            
				}
     else
        {
            printf("Task 4 failed to lock Server 2 \n\r");
            stop_cpu;
				}
			
					
}
