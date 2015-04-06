#include "peripherals.h" 
#include "osObjects.h"
#include "trace.h"
#include "stdio.h"

osThreadDef (thread3, osPriorityIdle, 300);  
extern int getCurrentCeiling();
osThreadId tid_thread3;      

int Init_thread3 (void) 
{
    tid_thread3 = osThreadCreate (osThread(thread3), NULL);

    if (tid_thread3 == NULL) 
    {
        return(-1);
    }
    printf("created thread3\n\r");
    return(0);
}
int Terminate_thread3 (void) 
{	

    if (osThreadTerminate(tid_thread3) != osOK)
    {
        return(-1);
    }

    return(0);
}
void thread3 (void const *argument) 
{
	osThreadId curr_th = osThreadGetId();
	printf("Task 3: Hello! . My priority is %d\n\r",curr_th->priority);
	printf("Task 3: I do not lock any resource! . My priority is %d\n\r",curr_th->priority);
	osThreadSetPriority(tid_thread2,osPriorityAboveNormal);
	printf("Task 3: ByeBye . My priority is %d\n\r",curr_th->priority);
	printf("The current priority ceiling is %d\n\r",getCurrentCeiling());
	osThreadSetPriority(tid_thread3,osPriorityIdle);
}