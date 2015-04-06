#define osObjectsExternal                    // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
#include "peripherals.h"                    // Peripheral definitions
#include "stdio.h"

int main(void)
{
	osKernelInitialize ();                 
	
	UART_initialize();
  printf("\n\rRavenOS Demo Version 2  (Mar 1, 2015)\n\r");
  LED_initialize(); 
//////////////////////////////	
	printf("Initializing threads\n\r");
  printf("creating thread5\n\r");		
	if (Init_thread5() != 0)
	{
		stop_cpu;
	}
  
printf("creating thread4\n\r");
	if (Init_thread4() != 0)
	{
		stop_cpu;
	}
	
printf("creating thread3\n\r");
	if (Init_thread3() != 0)
	{
		stop_cpu;
	}
  
printf("creating thread2\n\r");
	if (Init_thread2() != 0)
	{
		stop_cpu;
	}
  
printf("creating thread1\n\r");
	if (Init_thread1() != 0)
	{
		stop_cpu;
	}
////////////////////////////
	printf("Initializing semaphores\n\r");
  printf("creating sem1\n\r");
	if (Init_Semaphore1() != 0)
	{
		stop_cpu;
	}	
 	
  printf("creating sem2\n\r");
	if (Init_Semaphore2() != 0)
	{
		stop_cpu;
	}	
//////////////////////////
printf("Start kernel\n\r");
	
	osKernelStart ();
	
  // Should never be here
	printf("Trouble -- returned from osKernelStart()\n\r");
  stop_cpu2;
}	