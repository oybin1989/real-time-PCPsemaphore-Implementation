#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

osThreadDef (thread1, osPriorityIdle, 300);

osThreadId tid_thread1; 
extern int getCurrentCeiling();

int Init_thread1 (void) 
{
    tid_thread1 = osThreadCreate (osThread(thread1), NULL);

    if (tid_thread1 == NULL) 
    {
        return(-1);
    }
    printf("created thread1\n\r");
    return(0);
}
int Terminate_thread1 (void) 
{	

    if (osThreadTerminate(tid_thread1) != osOK)
    {
        return(-1);
    }

    return(0);
}
void thread1 (void const *argument) 
{
	osThreadId curr_th = osThreadGetId();
	printf("Task 1: Hello! . My priority is %d\n\r",curr_th->priority);
	
	printf("Task 1: Locking Server 2\n\r");
	
		if (osPcpSemaphoreWait (sid_Semaphore2, osWaitForever) >= 0 ) //
        {   
					  printf("Task 1: Server 2 locked . My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						printf("Task 1: I am doing something in Server 2 . My priority is %d\n\r",curr_th->priority);
						printf("Task 1: unlock Server2 . My priority is %d\n\r",curr_th->priority);
						osPcpSemaphoreRelease (sid_Semaphore2);
						printf("Task 1: Byebye . My priority is %d\n\r",curr_th->priority);
						printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
						osThreadSetPriority(tid_thread1,osPriorityIdle);
        }
     else
        {
            printf("Task 1 failed to lock Server 2 \n\r");
            stop_cpu;
				}
}