/*! \file main.c
    \brief A program that demonstrates threads
		\details Initialize threads and start the OS
**/


//TWP: fixed osObjectsExternal definition  (added "s" to "Objects")
#define osObjectsExternal                    // define objects in main module
#include "osObjects.h"                      // RTOS object definitions
#include "peripherals.h"                    // Peripheral definitions
#include "stdio.h"

// -------------------------------------------------------------------------
/*! \fn int main(void)
    \brief Start of main program
		\details Initializes the peripherals and starts the OS
*/
int main(void)
{
	osKernelInitialize ();                    // initialize CMSIS-RTOS
	
	// initialize peripherals
	UART_initialize();
  printf("\n\rRavenOS Demo Version 2  (Mar 1, 2015)\n\r");
  LED_initialize(); 
	
	printf("Initializing threads\n\r");
  printf("creating thread0\n\r");
	if (Init_thread0() != 0)
	{
		stop_cpu;
	}
  
	printf("creating thread1\n\r");
	if (Init_thread1() != 0)
	{
		stop_cpu;
	}
  //TWP   V1 only uses thread0 & thread1
	/*
	if (Init_thread2() != 0)
	{
		stop_cpu;
	}
  */	
//  // thread3 is a low priority thread can be used as a more user obvious alternative to print tracing from UART, 
//  // which currently resides in the Idle thread (operated by the RTOS)
//  if (Init_thread3() != 0)
//	{
//		stop_cpu;
//	}
	
	printf("Initializing semaphores\n\r");
  printf("creating sem0\n\r");
	if (Init_Semaphore0() != 0)
	{
		stop_cpu;
	}	
	
  printf("creating sem1\n\r");
	if (Init_Semaphore1() != 0)
	{
		stop_cpu;
	}	
  
	printf("Start kernel\n\r");
	osKernelStart ();                         // start thread execution 
	
  // Should never be here
	printf("Trouble -- returned from osKernelStart()\n\r");
  stop_cpu2;
}
