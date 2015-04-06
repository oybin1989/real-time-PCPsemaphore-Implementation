#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

osThreadDef (thread2, osPriorityIdle, 300);  
extern int getCurrentCeiling();
osThreadId tid_thread2;     

int Init_thread2 (void) 
{	
    tid_thread2 = osThreadCreate (osThread(thread2), NULL);

    if (tid_thread2 == NULL) 
    {
    			return(-1);
    }
    printf("created thread2\n\r");
    return(0);
}
int Terminate_thread2 (void) 
{	

    if (osThreadTerminate(tid_thread2) != osOK)
    {
        return(-1);
    }

    return(0);
}
void thread2 (void const *argument) 
{
	osThreadId curr_th = osThreadGetId();
	printf("Task 2: Hello! . My priority is %d\n\r",curr_th->priority);
	printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
	printf("Task 2: Locking Server 1\n\r");
	if (osPcpSemaphoreWait (sid_Semaphore1, osWaitForever) >= 0 ) //Used for acquring a server
	{
				printf("Task 2: Server 1 locked . My priority is %d\n\r",curr_th->priority);
				printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
				printf("Task 2: I am doing something in Server1 . My priority is %d\n\r",curr_th->priority);
				printf("Task 2: unlock Server1 . My priority is %d\n\r",curr_th->priority);
				osPcpSemaphoreRelease (sid_Semaphore1);
				printf("Task 2: ByeBye . My priority is %d\n\r",curr_th->priority);
				osThreadSetPriority(tid_thread2,osPriorityIdle);
	}else
  {
            printf("Task 2 failed to lock Server 1 \n\r");
            stop_cpu;
  }			
				
}
