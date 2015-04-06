#line 1 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.c"

































 











 

#line 1 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"
























 




#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"

























 

























 




#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_Common.h"
























 









 




#line 1 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   










#line 107 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 41 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_Common.h"
#line 1 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 42 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_Common.h"
#line 1 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "D:\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 43 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_Common.h"





 
typedef struct _ARM_DRIVER_VERSION {
  uint16_t api;                         
  uint16_t drv;                         
} ARM_DRIVER_VERSION;

 
#line 62 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_Common.h"



  
typedef enum _ARM_POWER_STATE {
  ARM_POWER_OFF,                        
  ARM_POWER_LOW,                        
  ARM_POWER_FULL                        
} ARM_POWER_STATE;

#line 58 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"




 




 
#line 74 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"

 
#line 83 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"

 






 
#line 98 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"

 
#line 106 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"

 





 






 
#line 132 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"



 
#line 144 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"




 
typedef struct _ARM_USART_STATUS {
  uint32_t tx_busy          : 1;        
  uint32_t rx_busy          : 1;        
  uint32_t tx_underflow     : 1;        
  uint32_t rx_overflow      : 1;        
  uint32_t rx_break         : 1;        
  uint32_t rx_framing_error : 1;        
  uint32_t rx_parity_error  : 1;        
} ARM_USART_STATUS;



 
typedef enum _ARM_USART_MODEM_CONTROL {
  ARM_USART_RTS_CLEAR,                  
  ARM_USART_RTS_SET,                    
  ARM_USART_DTR_CLEAR,                  
  ARM_USART_DTR_SET                     
} ARM_USART_MODEM_CONTROL;



 
typedef struct _ARM_USART_MODEM_STATUS {
  uint32_t cts : 1;                     
  uint32_t dsr : 1;                     
  uint32_t dcd : 1;                     
  uint32_t ri  : 1;                     
} ARM_USART_MODEM_STATUS;


 
#line 195 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Driver\\Include\\Driver_USART.h"














































































 

typedef void (*ARM_USART_SignalEvent_t) (uint32_t event);  




 
typedef struct _ARM_USART_CAPABILITIES {
  uint32_t asynchronous       : 1;      
  uint32_t synchronous_master : 1;      
  uint32_t synchronous_slave  : 1;      
  uint32_t single_wire        : 1;      
  uint32_t irda               : 1;      
  uint32_t smart_card         : 1;      
  uint32_t smart_card_clock   : 1;      
  uint32_t flow_control_rts   : 1;      
  uint32_t flow_control_cts   : 1;      
  uint32_t event_tx_complete  : 1;      
  uint32_t event_rx_timeout   : 1;      
  uint32_t rts                : 1;      
  uint32_t cts                : 1;      
  uint32_t dtr                : 1;      
  uint32_t dsr                : 1;      
  uint32_t dcd                : 1;      
  uint32_t ri                 : 1;      
  uint32_t event_cts          : 1;      
  uint32_t event_dsr          : 1;      
  uint32_t event_dcd          : 1;      
  uint32_t event_ri           : 1;      
} ARM_USART_CAPABILITIES;




 
typedef struct _ARM_DRIVER_USART {
  ARM_DRIVER_VERSION     (*GetVersion)      (void);                              
  ARM_USART_CAPABILITIES (*GetCapabilities) (void);                              
  int32_t                (*Initialize)      (ARM_USART_SignalEvent_t cb_event);  
  int32_t                (*Uninitialize)    (void);                              
  int32_t                (*PowerControl)    (ARM_POWER_STATE state);             
  int32_t                (*Send)            (const void *data, uint32_t num);    
  int32_t                (*Receive)         (      void *data, uint32_t num);    
  int32_t                (*Transfer)        (const void *data_out,
                                                   void *data_in,
                                             uint32_t    num);                   
  uint32_t               (*GetTxCount)      (void);                              
  uint32_t               (*GetRxCount)      (void);                              
  int32_t                (*Control)         (uint32_t control, uint32_t arg);    
  ARM_USART_STATUS       (*GetStatus)       (void);                              
  int32_t                (*SetModemControl) (ARM_USART_MODEM_CONTROL control);   
  ARM_USART_MODEM_STATUS (*GetModemStatus)  (void);                              
} const ARM_DRIVER_USART;

#line 31 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"























 




#line 30 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 31 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"

#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"
















































#line 58 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"






#line 94 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"
                                            
#line 170 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"






#line 244 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"
                                            
#line 283 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"






#line 318 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"






#line 339 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"













#line 475 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_ints.h"
















#line 33 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_gpio.h"















































#line 79 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_gpio.h"







                                            









                                            









                                            



















                                            

                                            
















                                            
                                            
                                            
                                            
                                            



































#line 194 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_gpio.h"
                                            
                                            
                                            

                                            

                                            
                                            
                                            
                                            
                                            
#line 212 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_gpio.h"

#line 34 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_types.h"















































#line 63 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\inc/hw_types.h"




















































































#line 35 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/debug.h"
















































extern void __error__(char *pcFilename, uint32_t ui32Line);







#line 69 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/debug.h"

#line 36 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/fpu.h"





























































































extern void FPUEnable(void);
extern void FPUDisable(void);
extern void FPUStackingEnable(void);
extern void FPULazyStackingEnable(void);
extern void FPUStackingDisable(void);
extern void FPUHalfPrecisionModeSet(uint32_t ui32Mode);
extern void FPUNaNModeSet(uint32_t ui32Mode);
extern void FPUFlushToZeroModeSet(uint32_t ui32Mode);
extern void FPURoundingModeSet(uint32_t ui32Mode);










#line 37 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"



























































#line 68 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"

















#line 91 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"







#line 105 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"







#line 119 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"







#line 135 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/gpio.h"






extern void GPIODirModeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32PinIO);
extern uint32_t GPIODirModeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOIntTypeSet(uint32_t ui32Port, uint8_t ui8Pins,
                           uint32_t ui32IntType);
extern uint32_t GPIOIntTypeGet(uint32_t ui32Port, uint8_t ui8Pin);
extern void GPIOPadConfigSet(uint32_t ui32Port, uint8_t ui8Pins,
                             uint32_t ui32Strength, uint32_t ui32PadType);
extern void GPIOPadConfigGet(uint32_t ui32Port, uint8_t ui8Pin,
                             uint32_t *pui32Strength, uint32_t *pui32PadType);
extern void GPIOIntEnable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntDisable(uint32_t ui32Port, uint32_t ui32IntFlags);
extern uint32_t GPIOIntStatus(uint32_t ui32Port, _Bool bMasked);
extern void GPIOIntClear(uint32_t ui32Port, uint32_t ui32IntFlags);
extern void GPIOIntRegister(uint32_t ui32Port, void (*pfnIntHandler)(void));
extern void GPIOIntUnregister(uint32_t ui32Port);
extern int32_t GPIOPinRead(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinWrite(uint32_t ui32Port, uint8_t ui8Pins, uint8_t ui8Val);
extern void GPIOPinConfigure(uint32_t ui32PinConfig);
extern void GPIOPinTypeADC(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeCAN(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeComparator(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEPI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetLED(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeEthernetMII(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOInput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutput(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeGPIOOutputOD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2C(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeI2CSCL(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeLCD(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypePWM(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeQEI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeSSI(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeTimer(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUART(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBAnalog(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeUSBDigital(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeHigh(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOPinTypeWakeLow(uint32_t ui32Port, uint8_t ui8Pins);
extern uint32_t GPIOPinWakeStatus(uint32_t ui32Port);
extern void GPIODMATriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIODMATriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerEnable(uint32_t ui32Port, uint8_t ui8Pins);
extern void GPIOADCTriggerDisable(uint32_t ui32Port, uint8_t ui8Pins);










#line 38 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/interrupt.h"


































































extern _Bool IntMasterEnable(void);
extern _Bool IntMasterDisable(void);
extern void IntRegister(uint32_t ui32Interrupt, void (*pfnHandler)(void));
extern void IntUnregister(uint32_t ui32Interrupt);
extern void IntPriorityGroupingSet(uint32_t ui32Bits);
extern uint32_t IntPriorityGroupingGet(void);
extern void IntPrioritySet(uint32_t ui32Interrupt,
                           uint8_t ui8Priority);
extern int32_t IntPriorityGet(uint32_t ui32Interrupt);
extern void IntEnable(uint32_t ui32Interrupt);
extern void IntDisable(uint32_t ui32Interrupt);
extern uint32_t IntIsEnabled(uint32_t ui32Interrupt);
extern void IntPendSet(uint32_t ui32Interrupt);
extern void IntPendClear(uint32_t ui32Interrupt);
extern void IntPriorityMaskSet(uint32_t ui32PriorityMask);
extern uint32_t IntPriorityMaskGet(void);
extern void IntTrigger(uint32_t ui32Interrupt);










#line 39 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"















































#line 213 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 384 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 555 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 726 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 875 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 1024 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 1250 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 1399 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 1625 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 1774 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2000 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2171 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2342 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2513 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2684 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2833 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 2982 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 3208 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 3357 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 3583 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 3732 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 3958 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 4136 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 4314 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 4492 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 4646 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 4880 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 5034 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 5268 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 5422 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 5656 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 5880 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 6104 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 6288 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 6593 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 6777 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 7082 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 7313 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 7544 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 7733 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 8046 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"









































































#line 8125 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"

#line 8132 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"










#line 8148 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"

#line 8155 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"













































#line 8208 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"

#line 8216 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"

























#line 8548 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 8857 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 9166 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 9483 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 9886 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 10338 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 10749 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 11209 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 11581 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 12076 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 12470 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 12995 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 13351 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 13707 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 14211 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 14737 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 15272 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 15807 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 16179 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 16674 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 17068 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 17593 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 17949 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 18305 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 18809 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 19344 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 19918 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"






#line 20492 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/pin_map.h"

#line 40 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"


















































#line 73 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 114 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 403 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 556 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 717 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 788 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 826 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 929 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 1069 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 1282 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 1682 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 1789 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 1867 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 2173 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 2488 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 2829 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 2942 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3128 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3194 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3272 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3578 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3713 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 3823 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 4363 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 4531 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 4717 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 5036 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 5074 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 5136 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 5426 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 5798 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 6006 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 6792 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 6929 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"






#line 6989 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom.h"

#line 41 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"






























































#line 140 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"








#line 155 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"








#line 171 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"







#line 185 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"
                                            





















#line 214 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"







#line 385 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"







#line 462 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"

















#line 486 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"








                                            

                                            











#line 516 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"






#line 535 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"















#line 556 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/sysctl.h"


























extern uint32_t SysCtlSRAMSizeGet(void);
extern uint32_t SysCtlFlashSizeGet(void);
extern uint32_t SysCtlFlashSectorSizeGet(void);
extern _Bool SysCtlPeripheralPresent(uint32_t ui32Peripheral);
extern _Bool SysCtlPeripheralReady(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOn(uint32_t ui32Peripheral);
extern void SysCtlPeripheralPowerOff(uint32_t ui32Peripheral);
extern void SysCtlPeripheralReset(uint32_t ui32Peripheral);
extern void SysCtlPeripheralEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepEnable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralDeepSleepDisable(uint32_t ui32Peripheral);
extern void SysCtlPeripheralClockGating(_Bool bEnable);
extern void SysCtlIntRegister(void (*pfnHandler)(void));
extern void SysCtlIntUnregister(void);
extern void SysCtlIntEnable(uint32_t ui32Ints);
extern void SysCtlIntDisable(uint32_t ui32Ints);
extern void SysCtlIntClear(uint32_t ui32Ints);
extern uint32_t SysCtlIntStatus(_Bool bMasked);
extern void SysCtlLDOSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDOSleepGet(void);
extern void SysCtlLDODeepSleepSet(uint32_t ui32Voltage);
extern uint32_t SysCtlLDODeepSleepGet(void);
extern void SysCtlSleepPowerSet(uint32_t ui32Config);
extern void SysCtlDeepSleepPowerSet(uint32_t ui32Config);
extern void SysCtlReset(void);
extern void SysCtlSleep(void);
extern void SysCtlDeepSleep(void);
extern uint32_t SysCtlResetCauseGet(void);
extern void SysCtlResetCauseClear(uint32_t ui32Causes);
extern void SysCtlBrownOutConfigSet(uint32_t ui32Config,
                                    uint32_t ui32Delay);
extern void SysCtlDelay(uint32_t ui32Count);
extern void SysCtlMOSCConfigSet(uint32_t ui32Config);
extern uint32_t SysCtlPIOSCCalibrate(uint32_t ui32Type);
extern void SysCtlClockSet(uint32_t ui32Config);
extern uint32_t SysCtlClockGet(void);
extern void SysCtlDeepSleepClockSet(uint32_t ui32Config);
extern void SysCtlDeepSleepClockConfigSet(uint32_t ui32Div,
                                          uint32_t ui32Config);
extern void SysCtlPWMClockSet(uint32_t ui32Config);
extern uint32_t SysCtlPWMClockGet(void);
extern void SysCtlIOSCVerificationSet(_Bool bEnable);
extern void SysCtlMOSCVerificationSet(_Bool bEnable);
extern void SysCtlPLLVerificationSet(_Bool bEnable);
extern void SysCtlClkVerificationClear(void);
extern void SysCtlGPIOAHBEnable(uint32_t ui32GPIOPeripheral);
extern void SysCtlGPIOAHBDisable(uint32_t ui32GPIOPeripheral);
extern void SysCtlUSBPLLEnable(void);
extern void SysCtlUSBPLLDisable(void);
extern uint32_t SysCtlClockFreqSet(uint32_t ui32Config,
                                   uint32_t ui32SysClock);
extern void SysCtlResetBehaviorSet(uint32_t ui32Behavior);
extern uint32_t SysCtlResetBehaviorGet(void);
extern void SysCtlClockOutConfig(uint32_t ui32Config, uint32_t ui32Div);
extern void SysCtlAltClkConfig(uint32_t ui32Config);
extern uint32_t SysCtlNMIStatus(void);
extern void SysCtlNMIClear(uint32_t ui32Status);
extern void SysCtlVoltageEventConfig(uint32_t ui32Config);
extern uint32_t SysCtlVoltageEventStatus(void);
extern void SysCtlVoltageEventClear(uint32_t ui32Status);










#line 42 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/uart.h"



























































#line 74 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/uart.h"










#line 98 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/uart.h"
































































































extern void UARTParityModeSet(uint32_t ui32Base, uint32_t ui32Parity);
extern uint32_t UARTParityModeGet(uint32_t ui32Base);
extern void UARTFIFOLevelSet(uint32_t ui32Base, uint32_t ui32TxLevel,
                             uint32_t ui32RxLevel);
extern void UARTFIFOLevelGet(uint32_t ui32Base, uint32_t *pui32TxLevel,
                             uint32_t *pui32RxLevel);
extern void UARTConfigSetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t ui32Baud, uint32_t ui32Config);
extern void UARTConfigGetExpClk(uint32_t ui32Base, uint32_t ui32UARTClk,
                                uint32_t *pui32Baud, uint32_t *pui32Config);
extern void UARTEnable(uint32_t ui32Base);
extern void UARTDisable(uint32_t ui32Base);
extern void UARTFIFOEnable(uint32_t ui32Base);
extern void UARTFIFODisable(uint32_t ui32Base);
extern void UARTEnableSIR(uint32_t ui32Base, _Bool bLowPower);
extern void UARTDisableSIR(uint32_t ui32Base);
extern _Bool UARTCharsAvail(uint32_t ui32Base);
extern _Bool UARTSpaceAvail(uint32_t ui32Base);
extern int32_t UARTCharGetNonBlocking(uint32_t ui32Base);
extern int32_t UARTCharGet(uint32_t ui32Base);
extern _Bool UARTCharPutNonBlocking(uint32_t ui32Base, unsigned char ucData);
extern void UARTCharPut(uint32_t ui32Base, unsigned char ucData);
extern void UARTBreakCtl(uint32_t ui32Base, _Bool bBreakState);
extern _Bool UARTBusy(uint32_t ui32Base);
extern void UARTIntRegister(uint32_t ui32Base, void (*pfnHandler)(void));
extern void UARTIntUnregister(uint32_t ui32Base);
extern void UARTIntEnable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTIntDisable(uint32_t ui32Base, uint32_t ui32IntFlags);
extern uint32_t UARTIntStatus(uint32_t ui32Base, _Bool bMasked);
extern void UARTIntClear(uint32_t ui32Base, uint32_t ui32IntFlags);
extern void UARTDMAEnable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern void UARTDMADisable(uint32_t ui32Base, uint32_t ui32DMAFlags);
extern uint32_t UARTRxErrorGet(uint32_t ui32Base);
extern void UARTRxErrorClear(uint32_t ui32Base);
extern void UARTSmartCardEnable(uint32_t ui32Base);
extern void UARTSmartCardDisable(uint32_t ui32Base);
extern void UARTModemControlSet(uint32_t ui32Base, uint32_t ui32Control);
extern void UARTModemControlClear(uint32_t ui32Base, uint32_t ui32Control);
extern uint32_t UARTModemControlGet(uint32_t ui32Base);
extern uint32_t UARTModemStatusGet(uint32_t ui32Base);
extern void UARTFlowControlSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTFlowControlGet(uint32_t ui32Base);
extern void UARTTxIntModeSet(uint32_t ui32Base, uint32_t ui32Mode);
extern uint32_t UARTTxIntModeGet(uint32_t ui32Base);
extern void UARTClockSourceSet(uint32_t ui32Base, uint32_t ui32Source);
extern uint32_t UARTClockSourceGet(uint32_t ui32Base);
extern void UART9BitEnable(uint32_t ui32Base);
extern void UART9BitDisable(uint32_t ui32Base);
extern void UART9BitAddrSet(uint32_t ui32Base, uint8_t ui8Addr,
                            uint8_t ui8Mask);
extern void UART9BitAddrSend(uint32_t ui32Base, uint8_t ui8Addr);










#line 43 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"
















































#line 280 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 447 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 572 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 627 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 668 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 786 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 918 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 1148 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 1651 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 1741 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 1810 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 2068 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 2396 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 2759 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 2863 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3065 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3120 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3210 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3440 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3551 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 3676 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4102 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4255 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4408 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4729 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4763 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 4818 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 5069 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 5383 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 5557 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 6256 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 6374 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"






#line 6415 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\driverlib/rom_map.h"

#line 44 "D:\\Keil5\\ARM\\PACK\\RavenOS\\TM4C123GH6PM_UART\\1.0.2\\RTE\\CMSIS\\Driver\\Config\\RTE_Device.h"

#line 32 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"

#line 1 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"












 


 





























 





 



 









 

typedef enum {
 
  Reset_IRQn                    = -15,               
  NonMaskableInt_IRQn           = -14,               
  HardFault_IRQn                = -13,               
  MemoryManagement_IRQn         = -12,              
 
  BusFault_IRQn                 = -11,              
 
  UsageFault_IRQn               = -10,               
  SVCall_IRQn                   =  -5,               
  DebugMonitor_IRQn             =  -4,               
  PendSV_IRQn                   =  -2,               
  SysTick_IRQn                  =  -1,               
 
  GPIOA_IRQn                    =   0,               
  GPIOB_IRQn                    =   1,               
  GPIOC_IRQn                    =   2,               
  GPIOD_IRQn                    =   3,               
  GPIOE_IRQn                    =   4,               
  UART0_IRQn                    =   5,               
  UART1_IRQn                    =   6,               
  SSI0_IRQn                     =   7,               
  I2C0_IRQn                     =   8,               
  PWM0_FAULT_IRQn               =   9,               
  PWM0_0_IRQn                   =  10,               
  PWM0_1_IRQn                   =  11,               
  PWM0_2_IRQn                   =  12,               
  QEI0_IRQn                     =  13,               
  ADC0SS0_IRQn                  =  14,               
  ADC0SS1_IRQn                  =  15,               
  ADC0SS2_IRQn                  =  16,               
  ADC0SS3_IRQn                  =  17,               
  WATCHDOG0_IRQn                =  18,               
  TIMER0A_IRQn                  =  19,               
  TIMER0B_IRQn                  =  20,               
  TIMER1A_IRQn                  =  21,               
  TIMER1B_IRQn                  =  22,               
  TIMER2A_IRQn                  =  23,               
  TIMER2B_IRQn                  =  24,               
  COMP0_IRQn                    =  25,               
  COMP1_IRQn                    =  26,               
  SYSCTL_IRQn                   =  28,               
  FLASH_CTRL_IRQn               =  29,               
  GPIOF_IRQn                    =  30,               
  UART2_IRQn                    =  33,               
  SSI1_IRQn                     =  34,               
  TIMER3A_IRQn                  =  35,               
  TIMER3B_IRQn                  =  36,               
  I2C1_IRQn                     =  37,               
  QEI1_IRQn                     =  38,               
  CAN0_IRQn                     =  39,               
  CAN1_IRQn                     =  40,               
  HIB_IRQn                      =  43,               
  USB0_IRQn                     =  44,               
  PWM0_3_IRQn                   =  45,               
  UDMA_IRQn                     =  46,               
  UDMAERR_IRQn                  =  47,               
  ADC1SS0_IRQn                  =  48,               
  ADC1SS1_IRQn                  =  49,               
  ADC1SS2_IRQn                  =  50,               
  ADC1SS3_IRQn                  =  51,               
  SSI2_IRQn                     =  57,               
  SSI3_IRQn                     =  58,               
  UART3_IRQn                    =  59,               
  UART4_IRQn                    =  60,               
  UART5_IRQn                    =  61,               
  UART6_IRQn                    =  62,               
  UART7_IRQn                    =  63,               
  I2C2_IRQn                     =  68,               
  I2C3_IRQn                     =  69,               
  TIMER4A_IRQn                  =  70,               
  TIMER4B_IRQn                  =  71,               
  TIMER5A_IRQn                  =  92,               
  TIMER5B_IRQn                  =  93,               
  WTIMER0A_IRQn                 =  94,               
  WTIMER0B_IRQn                 =  95,               
  WTIMER1A_IRQn                 =  96,               
  WTIMER1B_IRQn                 =  97,               
  WTIMER2A_IRQn                 =  98,               
  WTIMER2B_IRQn                 =  99,               
  WTIMER3A_IRQn                 = 100,               
  WTIMER3B_IRQn                 = 101,               
  WTIMER4A_IRQn                 = 102,               
  WTIMER4B_IRQn                 = 103,               
  WTIMER5A_IRQn                 = 104,               
  WTIMER5B_IRQn                 = 105,               
  SYSEXC_IRQn                   = 106,               
  PWM1_0_IRQn                   = 134,               
  PWM1_1_IRQn                   = 135,               
  PWM1_2_IRQn                   = 136,               
  PWM1_3_IRQn                   = 137,               
  PWM1_FAULT_IRQn               = 138                
} IRQn_Type;




 


 
 
 

 





   

#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"
 







 

























 
























 




 


 

 













#line 110 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"



 
#line 125 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"

#line 186 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"

#line 188 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmInstr.h"
 







 

























 






 



 


 









 







 







 






 








 







 







 









 









 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}










 










 











 









 









 









 











 











 











 







 










 










 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}









 









 









 









 









 









 





#line 877 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmInstr.h"

   

#line 189 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmFunc.h"
 







 

























 






 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 








 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}







 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xff);
}







 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}







 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}











 
static __inline uint32_t __get_FPSCR(void)
{

  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}







 
static __inline void __set_FPSCR(uint32_t fpscr)
{

  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);

}




#line 634 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmFunc.h"

 

#line 190 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmSimd.h"
 







 

























 
















 


 



 


 
#line 122 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmSimd.h"











#line 689 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cmSimd.h"

 






#line 191 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"
















 
#line 234 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"

 






 
#line 250 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"

 













 


 





 


 
typedef union
{
  struct
  {



    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                

    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       



    uint32_t _reserved0:7;                
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                

    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[8];                  
       uint32_t RESERVED0[24];
  volatile uint32_t ICER[8];                  
       uint32_t RSERVED1[24];
  volatile uint32_t ISPR[8];                  
       uint32_t RESERVED2[24];
  volatile uint32_t ICPR[8];                  
       uint32_t RESERVED3[24];
  volatile uint32_t IABR[8];                  
       uint32_t RESERVED4[56];
  volatile uint8_t  IP[240];                  
       uint32_t RESERVED5[644];
  volatile  uint32_t STIR;                     
}  NVIC_Type;

 



 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
  volatile uint32_t VTOR;                     
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
  volatile uint8_t  SHP[12];                  
  volatile uint32_t SHCSR;                    
  volatile uint32_t CFSR;                     
  volatile uint32_t HFSR;                     
  volatile uint32_t DFSR;                     
  volatile uint32_t MMFAR;                    
  volatile uint32_t BFAR;                     
  volatile uint32_t AFSR;                     
  volatile const  uint32_t PFR[2];                   
  volatile const  uint32_t DFR;                      
  volatile const  uint32_t ADR;                      
  volatile const  uint32_t MMFR[4];                  
  volatile const  uint32_t ISAR[5];                  
       uint32_t RESERVED0[5];
  volatile uint32_t CPACR;                    
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 









 















 






 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile const  uint32_t ICTR;                     
  volatile uint32_t ACTLR;                    
} SCnSCB_Type;

 



 















 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 






 


 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                   
    volatile  uint16_t   u16;                  
    volatile  uint32_t   u32;                  
  }  PORT [32];                           
       uint32_t RESERVED0[864];
  volatile uint32_t TER;                      
       uint32_t RESERVED1[15];
  volatile uint32_t TPR;                      
       uint32_t RESERVED2[15];
  volatile uint32_t TCR;                      
       uint32_t RESERVED3[29];
  volatile  uint32_t IWR;                      
  volatile const  uint32_t IRR;                      
  volatile uint32_t IMCR;                     
       uint32_t RESERVED4[43];
  volatile  uint32_t LAR;                      
  volatile const  uint32_t LSR;                      
       uint32_t RESERVED5[6];
  volatile const  uint32_t PID4;                     
  volatile const  uint32_t PID5;                     
  volatile const  uint32_t PID6;                     
  volatile const  uint32_t PID7;                     
  volatile const  uint32_t PID0;                     
  volatile const  uint32_t PID1;                     
  volatile const  uint32_t PID2;                     
  volatile const  uint32_t PID3;                     
  volatile const  uint32_t CID0;                     
  volatile const  uint32_t CID1;                     
  volatile const  uint32_t CID2;                     
  volatile const  uint32_t CID3;                     
} ITM_Type;

 



 



























 



 



 



 









   






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t CYCCNT;                   
  volatile uint32_t CPICNT;                   
  volatile uint32_t EXCCNT;                   
  volatile uint32_t SLEEPCNT;                 
  volatile uint32_t LSUCNT;                   
  volatile uint32_t FOLDCNT;                  
  volatile const  uint32_t PCSR;                     
  volatile uint32_t COMP0;                    
  volatile uint32_t MASK0;                    
  volatile uint32_t FUNCTION0;                
       uint32_t RESERVED0[1];
  volatile uint32_t COMP1;                    
  volatile uint32_t MASK1;                    
  volatile uint32_t FUNCTION1;                
       uint32_t RESERVED1[1];
  volatile uint32_t COMP2;                    
  volatile uint32_t MASK2;                    
  volatile uint32_t FUNCTION2;                
       uint32_t RESERVED2[1];
  volatile uint32_t COMP3;                    
  volatile uint32_t MASK3;                    
  volatile uint32_t FUNCTION3;                
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   






 


 
typedef struct
{
  volatile uint32_t SSPSR;                    
  volatile uint32_t CSPSR;                    
       uint32_t RESERVED0[2];
  volatile uint32_t ACPR;                     
       uint32_t RESERVED1[55];
  volatile uint32_t SPPR;                     
       uint32_t RESERVED2[131];
  volatile const  uint32_t FFSR;                     
  volatile uint32_t FFCR;                     
  volatile const  uint32_t FSCR;                     
       uint32_t RESERVED3[759];
  volatile const  uint32_t TRIGGER;                  
  volatile const  uint32_t FIFO0;                    
  volatile const  uint32_t ITATBCTR2;                
       uint32_t RESERVED4[1];
  volatile const  uint32_t ITATBCTR0;                
  volatile const  uint32_t FIFO1;                    
  volatile uint32_t ITCTRL;                   
       uint32_t RESERVED5[39];
  volatile uint32_t CLAIMSET;                 
  volatile uint32_t CLAIMCLR;                 
       uint32_t RESERVED7[8];
  volatile const  uint32_t DEVID;                    
  volatile const  uint32_t DEVTYPE;                  
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   







 


 
typedef struct
{
  volatile const  uint32_t TYPE;                     
  volatile uint32_t CTRL;                     
  volatile uint32_t RNR;                      
  volatile uint32_t RBAR;                     
  volatile uint32_t RASR;                     
  volatile uint32_t RBAR_A1;                  
  volatile uint32_t RASR_A1;                  
  volatile uint32_t RBAR_A2;                  
  volatile uint32_t RASR_A2;                  
  volatile uint32_t RBAR_A3;                  
  volatile uint32_t RASR_A3;                  
} MPU_Type;

 









 









 



 









 






























 








 


 
typedef struct
{
       uint32_t RESERVED0[1];
  volatile uint32_t FPCCR;                    
  volatile uint32_t FPCAR;                    
  volatile uint32_t FPDSCR;                   
  volatile const  uint32_t MVFR0;                    
  volatile const  uint32_t MVFR1;                    
} FPU_Type;

 



























 



 












 
























 












 







 


 
typedef struct
{
  volatile uint32_t DHCSR;                    
  volatile  uint32_t DCRSR;                    
  volatile uint32_t DCRDR;                    
  volatile uint32_t DEMCR;                    
} CoreDebug_Type;

 




































 






 







































 






 

 
#line 1408 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"

#line 1417 "D:\\Keil5\\ARM\\PACK\\ARM\\CMSIS\\4.2.0\\CMSIS\\Include\\core_cm4.h"











 










 

 



 




 










 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);                

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((0xFFFFUL << 16) | (7UL << 8));              
  reg_value  =  (reg_value                                 |
                ((uint32_t)0x5FA << 16) |
                (PriorityGroupTmp << 8));                                      
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}







 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) >> 8);    
}







 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
 
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));  
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - 3)) & 0xff); }  
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)] = ((priority << (8 - 3)) & 0xff);    }         
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[((uint32_t)(IRQn) & 0xF)-4] >> (8 - 3)));  }  
  else {
    return((uint32_t)(((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[(uint32_t)(IRQn)]           >> (8 - 3)));  }  
}













 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  return (
           ((PreemptPriority & ((1 << (PreemptPriorityBits)) - 1)) << SubPriorityBits) |
           ((SubPriority     & ((1 << (SubPriorityBits    )) - 1)))
         );
}













 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & 0x07);           
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7 - PriorityGroupTmp) > 3) ? 3 : 7 - PriorityGroupTmp;
  SubPriorityBits     = ((PriorityGroupTmp + 3) < 7) ? 0 : PriorityGroupTmp - 7 + 3;

  *pPreemptPriority = (Priority >> SubPriorityBits) & ((1 << (PreemptPriorityBits)) - 1);
  *pSubPriority     = (Priority                   ) & ((1 << (SubPriorityBits    )) - 1);
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8)) |
                 (1UL << 2));                    
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<3) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 



 




 

extern volatile int32_t ITM_RxBuffer;                     












 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if ((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL << 0))                  &&       
      (((ITM_Type *) (0xE0000000UL) )->TER & (1UL << 0)        )                    )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0].u32 == 0);
    ((ITM_Type *) (0xE0000000UL) )->PORT[0].u8 = (uint8_t) ch;
  }
  return (ch);
}








 
static __inline int32_t ITM_ReceiveChar (void) {
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5) {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5;        
  }

  return (ch);
}








 
static __inline int32_t ITM_CheckChar (void) {

  if (ITM_RxBuffer == 0x5AA55AA5) {
    return (0);                                  
  } else {
    return (1);                                  
  }
}

 










#line 182 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
#line 1 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_system_TM4C123.h"











 


 





















 









#line 48 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_system_TM4C123.h"

extern uint32_t SystemCoreClock;      










 
extern void SystemInit (void);









 
extern void SystemCoreClockUpdate (void);





#line 183 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"


 
 
 




 


 

  #pragma push
  #pragma anon_unions
#line 210 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"



 
 
 




 

typedef struct {                                     
  volatile uint32_t  LOAD;                               
  volatile uint32_t  VALUE;                              
  volatile uint32_t  CTL;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile const  uint32_t  RESERVED0[256];
  volatile uint32_t  TEST;                               
  volatile const  uint32_t  RESERVED1[505];
  volatile uint32_t  LOCK;                               
} WATCHDOG0_Type;


 
 
 




 

typedef struct {                                     
  volatile const  uint32_t  RESERVED0[255];
  volatile uint32_t  DATA;                               
  volatile uint32_t  DIR;                                
  volatile uint32_t  IS;                                 
  volatile uint32_t  IBE;                                
  volatile uint32_t  IEV;                                
  volatile uint32_t  IM;                                 
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  AFSEL;                              
  volatile const  uint32_t  RESERVED1[55];
  volatile uint32_t  DR2R;                               
  volatile uint32_t  DR4R;                               
  volatile uint32_t  DR8R;                               
  volatile uint32_t  ODR;                                
  volatile uint32_t  PUR;                                
  volatile uint32_t  PDR;                                
  volatile uint32_t  SLR;                                
  volatile uint32_t  DEN;                                
  volatile uint32_t  LOCK;                               
  volatile const  uint32_t  CR;                                 
  volatile uint32_t  AMSEL;                              
  volatile uint32_t  PCTL;                               
  volatile uint32_t  ADCCTL;                             
  volatile uint32_t  DMACTL;                             
} GPIOA_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CR0;                                
  volatile uint32_t  CR1;                                
  volatile uint32_t  DR;                                 
  volatile uint32_t  SR;                                 
  volatile uint32_t  CPSR;                               
  volatile uint32_t  IM;                                 
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  DMACTL;                             
  volatile const  uint32_t  RESERVED0[1000];
  volatile uint32_t  CC;                                 
} SSI0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  DR;                                 
  
  union {
    volatile uint32_t  ECR_UART_ALT;                     
    volatile uint32_t  RSR;                              
  };
  volatile const  uint32_t  RESERVED0[4];
  volatile uint32_t  FR;                                 
  volatile const  uint32_t  RESERVED1;
  volatile uint32_t  ILPR;                               
  volatile uint32_t  IBRD;                               
  volatile uint32_t  FBRD;                               
  volatile uint32_t  LCRH;                               
  volatile uint32_t  CTL;                                
  volatile uint32_t  IFLS;                               
  volatile uint32_t  IM;                                 
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  DMACTL;                             
  volatile const  uint32_t  RESERVED2[22];
  volatile uint32_t  _9BITADDR;                          
  volatile uint32_t  _9BITAMASK;                         
  volatile const  uint32_t  RESERVED3[965];
  volatile uint32_t  PP;                                 
  volatile const  uint32_t  RESERVED4;
  volatile uint32_t  CC;                                 
} UART0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  MSA;                                
  
  union {
    volatile uint32_t  MCS_I2C0_ALT;                     
    volatile uint32_t  MCS;                              
  };
  volatile uint32_t  MDR;                                
  volatile uint32_t  MTPR;                               
  volatile uint32_t  MIMR;                               
  volatile uint32_t  MRIS;                               
  volatile uint32_t  MMIS;                               
  volatile  uint32_t  MICR;                               
  volatile uint32_t  MCR;                                
  volatile uint32_t  MCLKOCNT;                           
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  MBMON;                              
  volatile const  uint32_t  RESERVED1[2];
  volatile uint32_t  MCR2;                               
  volatile const  uint32_t  RESERVED2[497];
  volatile uint32_t  SOAR;                               
  
  union {
    volatile uint32_t  SCSR_I2C0_ALT;                    
    volatile uint32_t  SCSR;                             
  };
  volatile uint32_t  SDR;                                
  volatile uint32_t  SIMR;                               
  volatile uint32_t  SRIS;                               
  volatile uint32_t  SMIS;                               
  volatile  uint32_t  SICR;                               
  volatile uint32_t  SOAR2;                              
  volatile uint32_t  SACKCTL;                            
  volatile const  uint32_t  RESERVED3[487];
  volatile uint32_t  PP;                                 
  volatile uint32_t  PC;                                 
} I2C0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CTL;                                
  volatile uint32_t  SYNC;                               
  volatile uint32_t  ENABLE;                             
  volatile uint32_t  INVERT;                             
  volatile uint32_t  FAULT;                              
  volatile uint32_t  INTEN;                              
  volatile uint32_t  RIS;                                
  volatile uint32_t  ISC;                                
  volatile uint32_t  STATUS;                             
  volatile uint32_t  FAULTVAL;                           
  volatile uint32_t  ENUPD;                              
  volatile const  uint32_t  RESERVED0[5];
  volatile uint32_t  _0_CTL;                             
  volatile uint32_t  _0_INTEN;                           
  volatile uint32_t  _0_RIS;                             
  volatile uint32_t  _0_ISC;                             
  volatile uint32_t  _0_LOAD;                            
  volatile uint32_t  _0_COUNT;                           
  volatile uint32_t  _0_CMPA;                            
  volatile uint32_t  _0_CMPB;                            
  volatile uint32_t  _0_GENA;                            
  volatile uint32_t  _0_GENB;                            
  volatile uint32_t  _0_DBCTL;                           
  volatile uint32_t  _0_DBRISE;                          
  volatile uint32_t  _0_DBFALL;                          
  volatile uint32_t  _0_FLTSRC0;                         
  volatile uint32_t  _0_FLTSRC1;                         
  volatile uint32_t  _0_MINFLTPER;                       
  volatile uint32_t  _1_CTL;                             
  volatile uint32_t  _1_INTEN;                           
  volatile uint32_t  _1_RIS;                             
  volatile uint32_t  _1_ISC;                             
  volatile uint32_t  _1_LOAD;                            
  volatile uint32_t  _1_COUNT;                           
  volatile uint32_t  _1_CMPA;                            
  volatile uint32_t  _1_CMPB;                            
  volatile uint32_t  _1_GENA;                            
  volatile uint32_t  _1_GENB;                            
  volatile uint32_t  _1_DBCTL;                           
  volatile uint32_t  _1_DBRISE;                          
  volatile uint32_t  _1_DBFALL;                          
  volatile uint32_t  _1_FLTSRC0;                         
  volatile uint32_t  _1_FLTSRC1;                         
  volatile uint32_t  _1_MINFLTPER;                       
  volatile uint32_t  _2_CTL;                             
  volatile uint32_t  _2_INTEN;                           
  volatile uint32_t  _2_RIS;                             
  volatile uint32_t  _2_ISC;                             
  volatile uint32_t  _2_LOAD;                            
  volatile uint32_t  _2_COUNT;                           
  volatile uint32_t  _2_CMPA;                            
  volatile uint32_t  _2_CMPB;                            
  volatile uint32_t  _2_GENA;                            
  volatile uint32_t  _2_GENB;                            
  volatile uint32_t  _2_DBCTL;                           
  volatile uint32_t  _2_DBRISE;                          
  volatile uint32_t  _2_DBFALL;                          
  volatile uint32_t  _2_FLTSRC0;                         
  volatile uint32_t  _2_FLTSRC1;                         
  volatile uint32_t  _2_MINFLTPER;                       
  volatile uint32_t  _3_CTL;                             
  volatile uint32_t  _3_INTEN;                           
  volatile uint32_t  _3_RIS;                             
  volatile uint32_t  _3_ISC;                             
  volatile uint32_t  _3_LOAD;                            
  volatile uint32_t  _3_COUNT;                           
  volatile uint32_t  _3_CMPA;                            
  volatile uint32_t  _3_CMPB;                            
  volatile uint32_t  _3_GENA;                            
  volatile uint32_t  _3_GENB;                            
  volatile uint32_t  _3_DBCTL;                           
  volatile uint32_t  _3_DBRISE;                          
  volatile uint32_t  _3_DBFALL;                          
  volatile uint32_t  _3_FLTSRC0;                         
  volatile uint32_t  _3_FLTSRC1;                         
  volatile uint32_t  _3_MINFLTPER;                       
  volatile const  uint32_t  RESERVED1[432];
  volatile uint32_t  _0_FLTSEN;                          
  volatile const  uint32_t  _0_FLTSTAT0;                        
  volatile const  uint32_t  _0_FLTSTAT1;                        
  volatile const  uint32_t  RESERVED2[29];
  volatile uint32_t  _1_FLTSEN;                          
  volatile const  uint32_t  _1_FLTSTAT0;                        
  volatile const  uint32_t  _1_FLTSTAT1;                        
  volatile const  uint32_t  RESERVED3[30];
  volatile const  uint32_t  _2_FLTSTAT0;                        
  volatile const  uint32_t  _2_FLTSTAT1;                        
  volatile const  uint32_t  RESERVED4[30];
  volatile const  uint32_t  _3_FLTSTAT0;                        
  volatile const  uint32_t  _3_FLTSTAT1;                        
  volatile const  uint32_t  RESERVED5[397];
  volatile uint32_t  PP;                                 
} PWM0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CTL;                                
  volatile uint32_t  STAT;                               
  volatile uint32_t  POS;                                
  volatile uint32_t  MAXPOS;                             
  volatile uint32_t  LOAD;                               
  volatile uint32_t  TIME;                               
  volatile uint32_t  COUNT;                              
  volatile uint32_t  SPEED;                              
  volatile uint32_t  INTEN;                              
  volatile uint32_t  RIS;                                
  volatile uint32_t  ISC;                                
} QEI0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CFG;                                
  volatile uint32_t  TAMR;                               
  volatile uint32_t  TBMR;                               
  volatile uint32_t  CTL;                                
  volatile uint32_t  SYNC;                               
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  IMR;                                
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  TAILR;                              
  volatile uint32_t  TBILR;                              
  volatile uint32_t  TAMATCHR;                           
  volatile uint32_t  TBMATCHR;                           
  volatile uint32_t  TAPR;                               
  volatile uint32_t  TBPR;                               
  volatile uint32_t  TAPMR;                              
  volatile uint32_t  TBPMR;                              
  volatile uint32_t  TAR;                                
  volatile uint32_t  TBR;                                
  volatile uint32_t  TAV;                                
  volatile uint32_t  TBV;                                
  volatile uint32_t  RTCPD;                              
  volatile uint32_t  TAPS;                               
  volatile uint32_t  TBPS;                               
  volatile uint32_t  TAPV;                               
  volatile uint32_t  TBPV;                               
  volatile const  uint32_t  RESERVED1[981];
  volatile uint32_t  PP;                                 
} TIMER0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CFG;                                
  volatile uint32_t  TAMR;                               
  volatile uint32_t  TBMR;                               
  volatile uint32_t  CTL;                                
  volatile uint32_t  SYNC;                               
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  IMR;                                
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile  uint32_t  ICR;                                
  volatile uint32_t  TAILR;                              
  volatile uint32_t  TBILR;                              
  volatile uint32_t  TAMATCHR;                           
  volatile uint32_t  TBMATCHR;                           
  volatile uint32_t  TAPR;                               
  volatile uint32_t  TBPR;                               
  volatile uint32_t  TAPMR;                              
  volatile uint32_t  TBPMR;                              
  volatile uint32_t  TAR;                                
  volatile uint32_t  TBR;                                
  volatile uint32_t  TAV;                                
  volatile uint32_t  TBV;                                
  volatile uint32_t  RTCPD;                              
  volatile uint32_t  TAPS;                               
  volatile uint32_t  TBPS;                               
  volatile uint32_t  TAPV;                               
  volatile uint32_t  TBPV;                               
  volatile const  uint32_t  RESERVED1[981];
  volatile uint32_t  PP;                                 
} WTIMER0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  ACTSS;                              
  volatile uint32_t  RIS;                                
  volatile uint32_t  IM;                                 
  volatile uint32_t  ISC;                                
  volatile uint32_t  OSTAT;                              
  volatile uint32_t  EMUX;                               
  volatile uint32_t  USTAT;                              
  volatile uint32_t  TSSEL;                              
  volatile uint32_t  SSPRI;                              
  volatile uint32_t  SPC;                                
  volatile uint32_t  PSSI;                               
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  SAC;                                
  volatile uint32_t  DCISC;                              
  volatile uint32_t  CTL;                                
  volatile const  uint32_t  RESERVED1;
  volatile uint32_t  SSMUX0;                             
  volatile uint32_t  SSCTL0;                             
  volatile uint32_t  SSFIFO0;                            
  volatile uint32_t  SSFSTAT0;                           
  volatile uint32_t  SSOP0;                              
  volatile uint32_t  SSDC0;                              
  volatile const  uint32_t  RESERVED2[2];
  volatile uint32_t  SSMUX1;                             
  volatile uint32_t  SSCTL1;                             
  volatile uint32_t  SSFIFO1;                            
  volatile uint32_t  SSFSTAT1;                           
  volatile uint32_t  SSOP1;                              
  volatile uint32_t  SSDC1;                              
  volatile const  uint32_t  RESERVED3[2];
  volatile uint32_t  SSMUX2;                             
  volatile uint32_t  SSCTL2;                             
  volatile uint32_t  SSFIFO2;                            
  volatile uint32_t  SSFSTAT2;                           
  volatile uint32_t  SSOP2;                              
  volatile uint32_t  SSDC2;                              
  volatile const  uint32_t  RESERVED4[2];
  volatile uint32_t  SSMUX3;                             
  volatile uint32_t  SSCTL3;                             
  volatile uint32_t  SSFIFO3;                            
  volatile uint32_t  SSFSTAT3;                           
  volatile uint32_t  SSOP3;                              
  volatile uint32_t  SSDC3;                              
  volatile const  uint32_t  RESERVED5[786];
  volatile  uint32_t  DCRIC;                              
  volatile const  uint32_t  RESERVED6[63];
  volatile uint32_t  DCCTL0;                             
  volatile uint32_t  DCCTL1;                             
  volatile uint32_t  DCCTL2;                             
  volatile uint32_t  DCCTL3;                             
  volatile uint32_t  DCCTL4;                             
  volatile uint32_t  DCCTL5;                             
  volatile uint32_t  DCCTL6;                             
  volatile uint32_t  DCCTL7;                             
  volatile const  uint32_t  RESERVED7[8];
  volatile uint32_t  DCCMP0;                             
  volatile uint32_t  DCCMP1;                             
  volatile uint32_t  DCCMP2;                             
  volatile uint32_t  DCCMP3;                             
  volatile uint32_t  DCCMP4;                             
  volatile uint32_t  DCCMP5;                             
  volatile uint32_t  DCCMP6;                             
  volatile uint32_t  DCCMP7;                             
  volatile const  uint32_t  RESERVED8[88];
  volatile uint32_t  PP;                                 
  volatile uint32_t  PC;                                 
  volatile uint32_t  CC;                                 
} ADC0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  ACMIS;                              
  volatile uint32_t  ACRIS;                              
  volatile uint32_t  ACINTEN;                            
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  ACREFCTL;                           
  volatile const  uint32_t  RESERVED1[3];
  volatile uint32_t  ACSTAT0;                            
  volatile uint32_t  ACCTL0;                             
  volatile const  uint32_t  RESERVED2[6];
  volatile uint32_t  ACSTAT1;                            
  volatile uint32_t  ACCTL1;                             
  volatile const  uint32_t  RESERVED3[990];
  volatile uint32_t  PP;                                 
} COMP_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  CTL;                                
  volatile uint32_t  STS;                                
  volatile uint32_t  ERR;                                
  volatile uint32_t  BIT;                                
  volatile uint32_t  INT;                                
  volatile uint32_t  TST;                                
  volatile uint32_t  BRPE;                               
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  IF1CRQ;                             
  
  union {
    volatile uint32_t  IF1CMSK_CAN0_ALT;                 
    volatile uint32_t  IF1CMSK;                          
  };
  volatile uint32_t  IF1MSK1;                            
  volatile uint32_t  IF1MSK2;                            
  volatile uint32_t  IF1ARB1;                            
  volatile uint32_t  IF1ARB2;                            
  volatile uint32_t  IF1MCTL;                            
  volatile uint32_t  IF1DA1;                             
  volatile uint32_t  IF1DA2;                             
  volatile uint32_t  IF1DB1;                             
  volatile uint32_t  IF1DB2;                             
  volatile const  uint32_t  RESERVED1[13];
  volatile uint32_t  IF2CRQ;                             
  
  union {
    volatile uint32_t  IF2CMSK_CAN0_ALT;                 
    volatile uint32_t  IF2CMSK;                          
  };
  volatile uint32_t  IF2MSK1;                            
  volatile uint32_t  IF2MSK2;                            
  volatile uint32_t  IF2ARB1;                            
  volatile uint32_t  IF2ARB2;                            
  volatile uint32_t  IF2MCTL;                            
  volatile uint32_t  IF2DA1;                             
  volatile uint32_t  IF2DA2;                             
  volatile uint32_t  IF2DB1;                             
  volatile uint32_t  IF2DB2;                             
  volatile const  uint32_t  RESERVED2[21];
  volatile uint32_t  TXRQ1;                              
  volatile uint32_t  TXRQ2;                              
  volatile const  uint32_t  RESERVED3[6];
  volatile uint32_t  NWDA1;                              
  volatile uint32_t  NWDA2;                              
  volatile const  uint32_t  RESERVED4[6];
  volatile uint32_t  MSG1INT;                            
  volatile uint32_t  MSG2INT;                            
  volatile const  uint32_t  RESERVED5[6];
  volatile uint32_t  MSG1VAL;                            
  volatile uint32_t  MSG2VAL;                            
} CAN0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint8_t   FADDR;                              
  volatile uint8_t   POWER;                              
  volatile uint16_t  TXIS;                               
  volatile uint16_t  RXIS;                               
  volatile uint16_t  TXIE;                               
  volatile uint16_t  RXIE;                               
  
  union {
    volatile uint8_t   IS_USB0_ALT;                      
    volatile uint8_t   IS;                               
  };
  
  union {
    volatile uint8_t   IE_USB0_ALT;                      
    volatile uint8_t   IE;                               
  };
  volatile uint16_t  FRAME;                              
  volatile uint8_t   EPIDX;                              
  volatile uint8_t   TEST;                               
  volatile const  uint32_t  RESERVED0[4];
  volatile uint32_t  FIFO0;                              
  volatile uint32_t  FIFO1;                              
  volatile uint32_t  FIFO2;                              
  volatile uint32_t  FIFO3;                              
  volatile uint32_t  FIFO4;                              
  volatile uint32_t  FIFO5;                              
  volatile uint32_t  FIFO6;                              
  volatile uint32_t  FIFO7;                              
  volatile const  uint32_t  RESERVED1[8];
  volatile uint8_t   DEVCTL;                             
  volatile const  uint8_t   RESERVED2[1];
  volatile uint8_t   TXFIFOSZ;                           
  volatile uint8_t   RXFIFOSZ;                           
  volatile uint16_t  TXFIFOADD;                          
  volatile uint16_t  RXFIFOADD;                          
  volatile const  uint32_t  RESERVED3[4];
  volatile const  uint16_t  RESERVED4;
  volatile uint8_t   CONTIM;                             
  volatile uint8_t   VPLEN;                              
  volatile const  uint8_t   RESERVED5[1];
  volatile uint8_t   FSEOF;                              
  volatile uint8_t   LSEOF;                              
  volatile const  uint8_t   RESERVED6[1];
  volatile uint8_t   TXFUNCADDR0;                        
  volatile const  uint8_t   RESERVED7[1];
  volatile uint8_t   TXHUBADDR0;                         
  volatile uint8_t   TXHUBPORT0;                         
  volatile const  uint32_t  RESERVED8;
  volatile uint8_t   TXFUNCADDR1;                        
  volatile const  uint8_t   RESERVED9[1];
  volatile uint8_t   TXHUBADDR1;                         
  volatile uint8_t   TXHUBPORT1;                         
  volatile uint8_t   RXFUNCADDR1;                        
  volatile const  uint8_t   RESERVED10[1];
  volatile uint8_t   RXHUBADDR1;                         
  volatile uint8_t   RXHUBPORT1;                         
  volatile uint8_t   TXFUNCADDR2;                        
  volatile const  uint8_t   RESERVED11[1];
  volatile uint8_t   TXHUBADDR2;                         
  volatile uint8_t   TXHUBPORT2;                         
  volatile uint8_t   RXFUNCADDR2;                        
  volatile const  uint8_t   RESERVED12[1];
  volatile uint8_t   RXHUBADDR2;                         
  volatile uint8_t   RXHUBPORT2;                         
  volatile uint8_t   TXFUNCADDR3;                        
  volatile const  uint8_t   RESERVED13[1];
  volatile uint8_t   TXHUBADDR3;                         
  volatile uint8_t   TXHUBPORT3;                         
  volatile uint8_t   RXFUNCADDR3;                        
  volatile const  uint8_t   RESERVED14[1];
  volatile uint8_t   RXHUBADDR3;                         
  volatile uint8_t   RXHUBPORT3;                         
  volatile uint8_t   TXFUNCADDR4;                        
  volatile const  uint8_t   RESERVED15[1];
  volatile uint8_t   TXHUBADDR4;                         
  volatile uint8_t   TXHUBPORT4;                         
  volatile uint8_t   RXFUNCADDR4;                        
  volatile const  uint8_t   RESERVED16[1];
  volatile uint8_t   RXHUBADDR4;                         
  volatile uint8_t   RXHUBPORT4;                         
  volatile uint8_t   TXFUNCADDR5;                        
  volatile const  uint8_t   RESERVED17[1];
  volatile uint8_t   TXHUBADDR5;                         
  volatile uint8_t   TXHUBPORT5;                         
  volatile uint8_t   RXFUNCADDR5;                        
  volatile const  uint8_t   RESERVED18[1];
  volatile uint8_t   RXHUBADDR5;                         
  volatile uint8_t   RXHUBPORT5;                         
  volatile uint8_t   TXFUNCADDR6;                        
  volatile const  uint8_t   RESERVED19[1];
  volatile uint8_t   TXHUBADDR6;                         
  volatile uint8_t   TXHUBPORT6;                         
  volatile uint8_t   RXFUNCADDR6;                        
  volatile const  uint8_t   RESERVED20[1];
  volatile uint8_t   RXHUBADDR6;                         
  volatile uint8_t   RXHUBPORT6;                         
  volatile uint8_t   TXFUNCADDR7;                        
  volatile const  uint8_t   RESERVED21[1];
  volatile uint8_t   TXHUBADDR7;                         
  volatile uint8_t   TXHUBPORT7;                         
  volatile uint8_t   RXFUNCADDR7;                        
  volatile const  uint8_t   RESERVED22[1];
  volatile uint8_t   RXHUBADDR7;                         
  volatile uint8_t   RXHUBPORT7;                         
  volatile const  uint32_t  RESERVED23[16];
  volatile const  uint16_t  RESERVED24;
  
  union {
    volatile  uint8_t   CSRL0_USB0_ALT;                   
    volatile  uint8_t   CSRL0;                            
  };
  volatile  uint8_t   CSRH0;                              
  volatile const  uint16_t  RESERVED25[3];
  volatile uint8_t   COUNT0;                             
  volatile const  uint8_t   RESERVED26[1];
  volatile uint8_t   TYPE0;                              
  volatile uint8_t   NAKLMT;                             
  volatile const  uint32_t  RESERVED27;
  volatile uint16_t  TXMAXP1;                            
  
  union {
    volatile uint8_t   TXCSRL1_USB0_ALT;                 
    volatile uint8_t   TXCSRL1;                          
  };
  volatile uint8_t   TXCSRH1;                            
  volatile uint16_t  RXMAXP1;                            
  
  union {
    volatile uint8_t   RXCSRL1_USB0_ALT;                 
    volatile uint8_t   RXCSRL1;                          
  };
  
  union {
    volatile uint8_t   RXCSRH1_USB0_ALT;                 
    volatile uint8_t   RXCSRH1;                          
  };
  volatile uint16_t  RXCOUNT1;                           
  volatile uint8_t   TXTYPE1;                            
  
  union {
    volatile uint8_t   TXINTERVAL1_USB0_ALT;             
    volatile uint8_t   TXINTERVAL1;                      
  };
  volatile uint8_t   RXTYPE1;                            
  
  union {
    volatile uint8_t   RXINTERVAL1_USB0_ALT;             
    volatile uint8_t   RXINTERVAL1;                      
  };
  volatile const  uint16_t  RESERVED28;
  volatile uint16_t  TXMAXP2;                            
  
  union {
    volatile uint8_t   TXCSRL2_USB0_ALT;                 
    volatile uint8_t   TXCSRL2;                          
  };
  volatile uint8_t   TXCSRH2;                            
  volatile uint16_t  RXMAXP2;                            
  
  union {
    volatile uint8_t   RXCSRL2_USB0_ALT;                 
    volatile uint8_t   RXCSRL2;                          
  };
  
  union {
    volatile uint8_t   RXCSRH2_USB0_ALT;                 
    volatile uint8_t   RXCSRH2;                          
  };
  volatile uint16_t  RXCOUNT2;                           
  volatile uint8_t   TXTYPE2;                            
  
  union {
    volatile uint8_t   TXINTERVAL2_USB0_ALT;             
    volatile uint8_t   TXINTERVAL2;                      
  };
  volatile uint8_t   RXTYPE2;                            
  
  union {
    volatile uint8_t   RXINTERVAL2_USB0_ALT;             
    volatile uint8_t   RXINTERVAL2;                      
  };
  volatile const  uint16_t  RESERVED29;
  volatile uint16_t  TXMAXP3;                            
  
  union {
    volatile uint8_t   TXCSRL3_USB0_ALT;                 
    volatile uint8_t   TXCSRL3;                          
  };
  volatile uint8_t   TXCSRH3;                            
  volatile uint16_t  RXMAXP3;                            
  
  union {
    volatile uint8_t   RXCSRL3_USB0_ALT;                 
    volatile uint8_t   RXCSRL3;                          
  };
  
  union {
    volatile uint8_t   RXCSRH3_USB0_ALT;                 
    volatile uint8_t   RXCSRH3;                          
  };
  volatile uint16_t  RXCOUNT3;                           
  volatile uint8_t   TXTYPE3;                            
  
  union {
    volatile uint8_t   TXINTERVAL3_USB0_ALT;             
    volatile uint8_t   TXINTERVAL3;                      
  };
  volatile uint8_t   RXTYPE3;                            
  
  union {
    volatile uint8_t   RXINTERVAL3_USB0_ALT;             
    volatile uint8_t   RXINTERVAL3;                      
  };
  volatile const  uint16_t  RESERVED30;
  volatile uint16_t  TXMAXP4;                            
  
  union {
    volatile uint8_t   TXCSRL4_USB0_ALT;                 
    volatile uint8_t   TXCSRL4;                          
  };
  volatile uint8_t   TXCSRH4;                            
  volatile uint16_t  RXMAXP4;                            
  
  union {
    volatile uint8_t   RXCSRL4_USB0_ALT;                 
    volatile uint8_t   RXCSRL4;                          
  };
  
  union {
    volatile uint8_t   RXCSRH4_USB0_ALT;                 
    volatile uint8_t   RXCSRH4;                          
  };
  volatile uint16_t  RXCOUNT4;                           
  volatile uint8_t   TXTYPE4;                            
  
  union {
    volatile uint8_t   TXINTERVAL4_USB0_ALT;             
    volatile uint8_t   TXINTERVAL4;                      
  };
  volatile uint8_t   RXTYPE4;                            
  
  union {
    volatile uint8_t   RXINTERVAL4_USB0_ALT;             
    volatile uint8_t   RXINTERVAL4;                      
  };
  volatile const  uint16_t  RESERVED31;
  volatile uint16_t  TXMAXP5;                            
  
  union {
    volatile uint8_t   TXCSRL5_USB0_ALT;                 
    volatile uint8_t   TXCSRL5;                          
  };
  volatile uint8_t   TXCSRH5;                            
  volatile uint16_t  RXMAXP5;                            
  
  union {
    volatile uint8_t   RXCSRL5_USB0_ALT;                 
    volatile uint8_t   RXCSRL5;                          
  };
  
  union {
    volatile uint8_t   RXCSRH5_USB0_ALT;                 
    volatile uint8_t   RXCSRH5;                          
  };
  volatile uint16_t  RXCOUNT5;                           
  volatile uint8_t   TXTYPE5;                            
  
  union {
    volatile uint8_t   TXINTERVAL5_USB0_ALT;             
    volatile uint8_t   TXINTERVAL5;                      
  };
  volatile uint8_t   RXTYPE5;                            
  
  union {
    volatile uint8_t   RXINTERVAL5_USB0_ALT;             
    volatile uint8_t   RXINTERVAL5;                      
  };
  volatile const  uint16_t  RESERVED32;
  volatile uint16_t  TXMAXP6;                            
  
  union {
    volatile uint8_t   TXCSRL6_USB0_ALT;                 
    volatile uint8_t   TXCSRL6;                          
  };
  volatile uint8_t   TXCSRH6;                            
  volatile uint16_t  RXMAXP6;                            
  
  union {
    volatile uint8_t   RXCSRL6_USB0_ALT;                 
    volatile uint8_t   RXCSRL6;                          
  };
  
  union {
    volatile uint8_t   RXCSRH6_USB0_ALT;                 
    volatile uint8_t   RXCSRH6;                          
  };
  volatile uint16_t  RXCOUNT6;                           
  volatile uint8_t   TXTYPE6;                            
  
  union {
    volatile uint8_t   TXINTERVAL6_USB0_ALT;             
    volatile uint8_t   TXINTERVAL6;                      
  };
  volatile uint8_t   RXTYPE6;                            
  
  union {
    volatile uint8_t   RXINTERVAL6_USB0_ALT;             
    volatile uint8_t   RXINTERVAL6;                      
  };
  volatile const  uint16_t  RESERVED33;
  volatile uint16_t  TXMAXP7;                            
  
  union {
    volatile uint8_t   TXCSRL7_USB0_ALT;                 
    volatile uint8_t   TXCSRL7;                          
  };
  volatile uint8_t   TXCSRH7;                            
  volatile uint16_t  RXMAXP7;                            
  
  union {
    volatile uint8_t   RXCSRL7_USB0_ALT;                 
    volatile uint8_t   RXCSRL7;                          
  };
  
  union {
    volatile uint8_t   RXCSRH7_USB0_ALT;                 
    volatile uint8_t   RXCSRH7;                          
  };
  volatile uint16_t  RXCOUNT7;                           
  volatile uint8_t   TXTYPE7;                            
  
  union {
    volatile uint8_t   TXINTERVAL7_USB0_ALT;             
    volatile uint8_t   TXINTERVAL7;                      
  };
  volatile uint8_t   RXTYPE7;                            
  
  union {
    volatile uint8_t   RXINTERVAL7_USB0_ALT;             
    volatile uint8_t   RXINTERVAL7;                      
  };
  volatile const  uint16_t  RESERVED34[195];
  volatile uint16_t  RQPKTCOUNT1;                        
  volatile const  uint16_t  RESERVED35;
  volatile uint16_t  RQPKTCOUNT2;                        
  volatile const  uint16_t  RESERVED36;
  volatile uint16_t  RQPKTCOUNT3;                        
  volatile const  uint16_t  RESERVED37;
  volatile uint16_t  RQPKTCOUNT4;                        
  volatile const  uint16_t  RESERVED38;
  volatile uint16_t  RQPKTCOUNT5;                        
  volatile const  uint16_t  RESERVED39;
  volatile uint16_t  RQPKTCOUNT6;                        
  volatile const  uint16_t  RESERVED40;
  volatile uint16_t  RQPKTCOUNT7;                        
  volatile const  uint16_t  RESERVED41[17];
  volatile uint16_t  RXDPKTBUFDIS;                       
  volatile uint16_t  TXDPKTBUFDIS;                       
  volatile const  uint32_t  RESERVED42[47];
  volatile uint32_t  EPC;                                
  volatile uint32_t  EPCRIS;                             
  volatile uint32_t  EPCIM;                              
  volatile uint32_t  EPCISC;                             
  volatile uint32_t  DRRIS;                              
  volatile uint32_t  DRIM;                               
  volatile  uint32_t  DRISC;                              
  volatile uint32_t  GPCS;                               
  volatile const  uint32_t  RESERVED43[4];
  volatile uint32_t  VDC;                                
  volatile uint32_t  VDCRIS;                             
  volatile uint32_t  VDCIM;                              
  volatile uint32_t  VDCISC;                             
  volatile const  uint32_t  RESERVED44;
  volatile uint32_t  IDVRIS;                             
  volatile uint32_t  IDVIM;                              
  volatile uint32_t  IDVISC;                             
  volatile uint32_t  DMASEL;                             
  volatile const  uint32_t  RESERVED45[731];
  volatile uint32_t  PP;                                 
} USB0_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  EESIZE;                             
  volatile uint32_t  EEBLOCK;                            
  volatile uint32_t  EEOFFSET;                           
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  EERDWR;                             
  volatile uint32_t  EERDWRINC;                          
  volatile uint32_t  EEDONE;                             
  volatile uint32_t  EESUPP;                             
  volatile uint32_t  EEUNLOCK;                           
  volatile const  uint32_t  RESERVED1[3];
  volatile uint32_t  EEPROT;                             
  volatile uint32_t  EEPASS0;                            
  volatile uint32_t  EEPASS1;                            
  volatile uint32_t  EEPASS2;                            
  volatile uint32_t  EEINT;                              
  volatile const  uint32_t  RESERVED2[3];
  volatile uint32_t  EEHIDE;                             
  volatile const  uint32_t  RESERVED3[11];
  volatile uint32_t  EEDBGME;                            
  volatile const  uint32_t  RESERVED4[975];
  volatile uint32_t  PP;                                 
} EEPROM_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  RIS;                                
  volatile uint32_t  IM;                                 
  volatile uint32_t  MIS;                                
  volatile  uint32_t  IC;                                 
} SYSEXC_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  RTCC;                               
  volatile uint32_t  RTCM0;                              
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  RTCLD;                              
  volatile uint32_t  CTL;                                
  volatile uint32_t  IM;                                 
  volatile uint32_t  RIS;                                
  volatile uint32_t  MIS;                                
  volatile uint32_t  IC;                                 
  volatile uint32_t  RTCT;                               
  volatile uint32_t  RTCSS;                              
  volatile const  uint32_t  RESERVED1;
  volatile uint32_t  DATA;                               
} HIB_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  FMA;                                
  volatile uint32_t  FMD;                                
  volatile uint32_t  FMC;                                
  volatile uint32_t  FCRIS;                              
  volatile uint32_t  FCIM;                               
  volatile uint32_t  FCMISC;                             
  volatile const  uint32_t  RESERVED0[2];
  volatile uint32_t  FMC2;                               
  volatile const  uint32_t  RESERVED1[3];
  volatile uint32_t  FWBVAL;                             
  volatile const  uint32_t  RESERVED2[51];
  volatile uint32_t  FWBN;                               
  volatile const  uint32_t  RESERVED3[943];
  volatile uint32_t  FSIZE;                              
  volatile uint32_t  SSIZE;                              
  volatile const  uint32_t  RESERVED4;
  
  union {
    volatile uint32_t  ROMSWMAP_FLASH_CTRL_ALT;          
    volatile uint32_t  ROMSWMAP;                         
  };
  volatile const  uint32_t  RESERVED5[72];
  volatile uint32_t  RMCTL;                              
  volatile const  uint32_t  RESERVED6[55];
  volatile uint32_t  BOOTCFG;                            
  volatile const  uint32_t  RESERVED7[3];
  volatile uint32_t  USERREG0;                           
  volatile uint32_t  USERREG1;                           
  volatile uint32_t  USERREG2;                           
  volatile uint32_t  USERREG3;                           
  volatile const  uint32_t  RESERVED8[4];
  volatile uint32_t  FMPRE0;                             
  volatile uint32_t  FMPRE1;                             
  volatile uint32_t  FMPRE2;                             
  volatile uint32_t  FMPRE3;                             
  volatile const  uint32_t  RESERVED9[124];
  volatile uint32_t  FMPPE0;                             
  volatile uint32_t  FMPPE1;                             
  volatile uint32_t  FMPPE2;                             
  volatile uint32_t  FMPPE3;                             
} FLASH_CTRL_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  DID0;                               
  volatile uint32_t  DID1;                               
  volatile uint32_t  DC0;                                
  volatile const  uint32_t  RESERVED0;
  volatile uint32_t  DC1;                                
  volatile uint32_t  DC2;                                
  volatile uint32_t  DC3;                                
  volatile uint32_t  DC4;                                
  volatile uint32_t  DC5;                                
  volatile uint32_t  DC6;                                
  volatile uint32_t  DC7;                                
  volatile uint32_t  DC8;                                
  volatile uint32_t  PBORCTL;                            
  volatile const  uint32_t  RESERVED1[3];
  volatile uint32_t  SRCR0;                              
  volatile uint32_t  SRCR1;                              
  volatile uint32_t  SRCR2;                              
  volatile const  uint32_t  RESERVED2;
  volatile uint32_t  RIS;                                
  volatile uint32_t  IMC;                                
  volatile uint32_t  MISC;                               
  volatile uint32_t  RESC;                               
  volatile uint32_t  RCC;                                
  volatile const  uint32_t  RESERVED3[2];
  volatile uint32_t  GPIOHBCTL;                          
  volatile uint32_t  RCC2;                               
  volatile const  uint32_t  RESERVED4[2];
  volatile uint32_t  MOSCCTL;                            
  volatile const  uint32_t  RESERVED5[32];
  volatile uint32_t  RCGC0;                              
  volatile uint32_t  RCGC1;                              
  volatile uint32_t  RCGC2;                              
  volatile const  uint32_t  RESERVED6;
  volatile uint32_t  SCGC0;                              
  volatile uint32_t  SCGC1;                              
  volatile uint32_t  SCGC2;                              
  volatile const  uint32_t  RESERVED7;
  volatile uint32_t  DCGC0;                              
  volatile uint32_t  DCGC1;                              
  volatile uint32_t  DCGC2;                              
  volatile const  uint32_t  RESERVED8[6];
  volatile uint32_t  DSLPCLKCFG;                         
  volatile const  uint32_t  RESERVED9;
  volatile uint32_t  SYSPROP;                            
  volatile uint32_t  PIOSCCAL;                           
  volatile uint32_t  PIOSCSTAT;                          
  volatile const  uint32_t  RESERVED10[2];
  volatile uint32_t  PLLFREQ0;                           
  volatile uint32_t  PLLFREQ1;                           
  volatile uint32_t  PLLSTAT;                            
  volatile const  uint32_t  RESERVED11[7];
  volatile uint32_t  SLPPWRCFG;                          
  volatile uint32_t  DSLPPWRCFG;                         
  volatile uint32_t  DC9;                                
  volatile const  uint32_t  RESERVED12[3];
  volatile uint32_t  NVMSTAT;                            
  volatile const  uint32_t  RESERVED13[4];
  volatile uint32_t  LDOSPCTL;                           
  volatile const  uint32_t  RESERVED14;
  volatile uint32_t  LDODPCTL;                           
  volatile const  uint32_t  RESERVED15[80];
  volatile uint32_t  PPWD;                               
  volatile uint32_t  PPTIMER;                            
  volatile uint32_t  PPGPIO;                             
  volatile uint32_t  PPDMA;                              
  volatile const  uint32_t  RESERVED16;
  volatile uint32_t  PPHIB;                              
  volatile uint32_t  PPUART;                             
  volatile uint32_t  PPSSI;                              
  volatile uint32_t  PPI2C;                              
  volatile const  uint32_t  RESERVED17;
  volatile uint32_t  PPUSB;                              
  volatile const  uint32_t  RESERVED18[2];
  volatile uint32_t  PPCAN;                              
  volatile uint32_t  PPADC;                              
  volatile uint32_t  PPACMP;                             
  volatile uint32_t  PPPWM;                              
  volatile uint32_t  PPQEI;                              
  volatile const  uint32_t  RESERVED19[4];
  volatile uint32_t  PPEEPROM;                           
  volatile uint32_t  PPWTIMER;                           
  volatile const  uint32_t  RESERVED20[104];
  volatile uint32_t  SRWD;                               
  volatile uint32_t  SRTIMER;                            
  volatile uint32_t  SRGPIO;                             
  volatile uint32_t  SRDMA;                              
  volatile const  uint32_t  RESERVED21;
  volatile uint32_t  SRHIB;                              
  volatile uint32_t  SRUART;                             
  volatile uint32_t  SRSSI;                              
  volatile uint32_t  SRI2C;                              
  volatile const  uint32_t  RESERVED22;
  volatile uint32_t  SRUSB;                              
  volatile const  uint32_t  RESERVED23[2];
  volatile uint32_t  SRCAN;                              
  volatile uint32_t  SRADC;                              
  volatile uint32_t  SRACMP;                             
  volatile uint32_t  SRPWM;                              
  volatile uint32_t  SRQEI;                              
  volatile const  uint32_t  RESERVED24[4];
  volatile uint32_t  SREEPROM;                           
  volatile uint32_t  SRWTIMER;                           
  volatile const  uint32_t  RESERVED25[40];
  volatile uint32_t  RCGCWD;                             
  volatile uint32_t  RCGCTIMER;                          
  volatile uint32_t  RCGCGPIO;                           
  volatile uint32_t  RCGCDMA;                            
  volatile const  uint32_t  RESERVED26;
  volatile uint32_t  RCGCHIB;                            
  volatile uint32_t  RCGCUART;                          
 
  volatile uint32_t  RCGCSSI;                            
  volatile uint32_t  RCGCI2C;                            
  volatile const  uint32_t  RESERVED27;
  volatile uint32_t  RCGCUSB;                            
  volatile const  uint32_t  RESERVED28[2];
  volatile uint32_t  RCGCCAN;                            
  volatile uint32_t  RCGCADC;                            
  volatile uint32_t  RCGCACMP;                           
  volatile uint32_t  RCGCPWM;                            
  volatile uint32_t  RCGCQEI;                            
  volatile const  uint32_t  RESERVED29[4];
  volatile uint32_t  RCGCEEPROM;                         
  volatile uint32_t  RCGCWTIMER;                         
  volatile const  uint32_t  RESERVED30[40];
  volatile uint32_t  SCGCWD;                             
  volatile uint32_t  SCGCTIMER;                          
  volatile uint32_t  SCGCGPIO;                           
  volatile uint32_t  SCGCDMA;                            
  volatile const  uint32_t  RESERVED31;
  volatile uint32_t  SCGCHIB;                            
  volatile uint32_t  SCGCUART;                          
 
  volatile uint32_t  SCGCSSI;                            
  volatile uint32_t  SCGCI2C;                            
  volatile const  uint32_t  RESERVED32;
  volatile uint32_t  SCGCUSB;                            
  volatile const  uint32_t  RESERVED33[2];
  volatile uint32_t  SCGCCAN;                            
  volatile uint32_t  SCGCADC;                            
  volatile uint32_t  SCGCACMP;                           
  volatile uint32_t  SCGCPWM;                            
  volatile uint32_t  SCGCQEI;                            
  volatile const  uint32_t  RESERVED34[4];
  volatile uint32_t  SCGCEEPROM;                         
  volatile uint32_t  SCGCWTIMER;                        
 
  volatile const  uint32_t  RESERVED35[40];
  volatile uint32_t  DCGCWD;                             
  volatile uint32_t  DCGCTIMER;                         
 
  volatile uint32_t  DCGCGPIO;                           
  volatile uint32_t  DCGCDMA;                            
  volatile const  uint32_t  RESERVED36;
  volatile uint32_t  DCGCHIB;                            
  volatile uint32_t  DCGCUART;                          
 
  volatile uint32_t  DCGCSSI;                            
  volatile uint32_t  DCGCI2C;                            
  volatile const  uint32_t  RESERVED37;
  volatile uint32_t  DCGCUSB;                            
  volatile const  uint32_t  RESERVED38[2];
  volatile uint32_t  DCGCCAN;                            
  volatile uint32_t  DCGCADC;                            
  volatile uint32_t  DCGCACMP;                           
  volatile uint32_t  DCGCPWM;                            
  volatile uint32_t  DCGCQEI;                            
  volatile const  uint32_t  RESERVED39[4];
  volatile uint32_t  DCGCEEPROM;                         
  volatile uint32_t  DCGCWTIMER;                        
 
  volatile const  uint32_t  RESERVED40[104];
  volatile uint32_t  PRWD;                               
  volatile uint32_t  PRTIMER;                            
  volatile uint32_t  PRGPIO;                             
  volatile uint32_t  PRDMA;                              
  volatile const  uint32_t  RESERVED41;
  volatile uint32_t  PRHIB;                              
  volatile uint32_t  PRUART;                             
  volatile uint32_t  PRSSI;                              
  volatile uint32_t  PRI2C;                              
  volatile const  uint32_t  RESERVED42;
  volatile uint32_t  PRUSB;                              
  volatile const  uint32_t  RESERVED43[2];
  volatile uint32_t  PRCAN;                              
  volatile uint32_t  PRADC;                              
  volatile uint32_t  PRACMP;                             
  volatile uint32_t  PRPWM;                              
  volatile uint32_t  PRQEI;                              
  volatile const  uint32_t  RESERVED44[4];
  volatile uint32_t  PREEPROM;                           
  volatile uint32_t  PRWTIMER;                           
} SYSCTL_Type;


 
 
 




 

typedef struct {                                     
  volatile uint32_t  STAT;                               
  volatile  uint32_t  CFG;                                
  volatile uint32_t  CTLBASE;                            
  volatile uint32_t  ALTBASE;                            
  volatile uint32_t  WAITSTAT;                           
  volatile  uint32_t  SWREQ;                              
  volatile uint32_t  USEBURSTSET;                        
  volatile  uint32_t  USEBURSTCLR;                        
  volatile uint32_t  REQMASKSET;                         
  volatile  uint32_t  REQMASKCLR;                         
  volatile uint32_t  ENASET;                             
  volatile  uint32_t  ENACLR;                             
  volatile uint32_t  ALTSET;                             
  volatile  uint32_t  ALTCLR;                             
  volatile uint32_t  PRIOSET;                            
  volatile  uint32_t  PRIOCLR;                            
  volatile const  uint32_t  RESERVED0[3];
  volatile uint32_t  ERRCLR;                             
  volatile const  uint32_t  RESERVED1[300];
  volatile uint32_t  CHASGN;                             
  volatile uint32_t  CHIS;                               
  volatile const  uint32_t  RESERVED2[2];
  volatile uint32_t  CHMAP0;                             
  volatile uint32_t  CHMAP1;                             
  volatile uint32_t  CHMAP2;                             
  volatile uint32_t  CHMAP3;                             
} UDMA_Type;


 

  #pragma pop
#line 1551 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"




 
 
 

#line 1617 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"


 
 
 

#line 1681 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"


   
   
   











































































































                                            

                                            








#line 1824 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 1863 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 1905 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 1960 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 1991 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 2032 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2060 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"









                                            





































                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            
















                                            







#line 2178 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
























#line 2208 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






























#line 2249 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2267 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            
#line 2281 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            













                                            



                                            

                                            



                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 2368 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            












































                                            
















#line 2443 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

























                                            








                                            









































#line 2536 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































                                            

                                            








                                            

                                            



































































#line 2668 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2682 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2696 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2708 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2720 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2732 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 2754 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2792 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2827 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 2877 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






































#line 2953 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 2997 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







































#line 3044 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















#line 3088 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 3138 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






































#line 3214 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 3258 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































#line 3309 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















#line 3353 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 3403 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






































#line 3479 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 3523 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































#line 3574 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















#line 3618 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            


                                            




                                            

                                            

                                            

                                            









                                            


                                            









#line 3668 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






































#line 3744 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 3788 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































#line 3839 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

































#line 3880 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
























#line 3912 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















#line 3936 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















#line 3960 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 3973 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 4001 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















                                            








                                            









































                                            


                                            




























                                            
                                            

                                            
                                            
                                            

                                            
                                            







                                            

                                            

                                            




                                            


                                            












                                            

                                            

                                            




                                            


                                            













                                            
#line 4175 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            
#line 4183 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            

                                            

                                            
                                            

                                            
                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            



                                            

                                            

                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            


                                            

                                            

                                            



                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            


                                            

                                            

                                            







                                            








                                            














































                                            










                                            



















































































                                            
                                            

                                            
                                            


















                                            











                                            

                                            

                                            

                                            











                                            

                                            

                                            

                                            




















#line 4701 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
















#line 4774 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 4786 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 4800 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            









                                            






#line 4854 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"










                                            




                                            




                                            




                                            




                                            




                                            




                                            




                                            














#line 4920 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            
#line 4971 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 4985 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"










                                            




                                            




                                            




                                            














#line 5031 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            









#line 5076 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"










                                            




                                            




                                            




                                            














#line 5122 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            



































#line 5191 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            







                                            






#line 5229 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5255 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5281 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5307 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5333 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5359 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5385 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5411 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 5437 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






















































































#line 5537 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"



























                                            

                                            








































#line 5625 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"













#line 5656 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















#line 5679 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











                                            
#line 5700 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















#line 5725 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















#line 5749 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"























#line 5781 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































#line 5835 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















































#line 5891 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"











































#line 5945 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














































































































#line 6061 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6075 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6088 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6102 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            






#line 6116 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6131 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            
#line 6148 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"































































































#line 6254 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6271 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6288 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















































































































































































































































































































































































































































































#line 6764 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















































#line 6822 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6836 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 6861 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6876 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 6901 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 6916 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6933 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 6948 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 6972 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 6986 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7011 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7026 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7051 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7066 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7083 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7098 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7122 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7136 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7161 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7176 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7201 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7216 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7233 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7248 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7272 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7286 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7311 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7326 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7351 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7366 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7383 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7398 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7422 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7436 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7461 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7476 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7501 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7516 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7533 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7548 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7572 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7586 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7611 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7626 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7651 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7666 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7683 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7698 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7722 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7736 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7761 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7776 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 7801 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7816 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 7833 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 7848 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







































































                                            

                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            






#line 7969 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            



                                            

                                            





















                                            





















                                            




































                                            







                                            














                                            






#line 8098 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8112 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            















































                                            








































                                            
                                            
                                            

                                            
                                            


                                            






























































                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            
                                            

                                            
                                            

                                            

                                            
                                            

                                            
                                            







                                            

                                            

                                            

                                            

                                            

                                            


































                                            
#line 8389 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            


                                            








                                            

                                            

                                            








                                            

                                            

                                            

                                            







                                            


                                            

                                            




























































                                            

                                            

                                            

                                            









#line 8524 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            

                                            

                                            

                                            

























































#line 8625 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"








































                                            



                                            



                                            

                                            


                                            








#line 8704 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            
                                            
                                            
#line 8715 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8740 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8755 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            

                                            

                                            

                                            

                                            

                                            
#line 8784 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8810 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8847 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8870 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8890 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















#line 8938 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 8976 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 8998 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9019 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9033 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            


                                            

                                            






#line 9064 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            








                                            

                                            

                                            

                                            


                                            

                                            






#line 9098 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9146 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"








                                            

                                            

                                            

                                            

                                            

                                            








                                            
#line 9186 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















#line 9225 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9246 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9260 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9274 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9295 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9309 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9323 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9344 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9358 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 9374 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"





























                                            

                                            

                                            







































#line 9461 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 9482 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 9504 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            







#line 9535 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 9558 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















                                            

                                            

                                            

                                            

                                            

                                            






#line 9605 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"




















#line 9633 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















#line 9655 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






























































                                            

                                            

                                            

                                            

                                            

                                            















                                            

                                            

                                            

                                            

                                            

                                            






#line 9766 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














                                            






#line 9795 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"


















































                                            
































                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            








                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            

                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            








                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            

                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            








                                            

                                            

                                            

                                            

                                            

                                            







                                            







                                            








                                            

                                            

                                            

                                            

                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            

                                            

                                            

                                            







                                            







                                            

                                            







                                            

                                            








                                            
                                            







                                            

                                            







                                            

                                            








                                            








                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            

                                            
                                            







                                            

                                            







                                            

                                            

                                            

                                            

                                            

                                            






#line 10560 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














                                            






#line 10589 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"


















































                                            
































                                            

                                            

                                            

                                            

                                            

                                            






#line 10702 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            
#line 10709 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






















                                            








































































































                                            

                                            













#line 10868 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 10890 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 10912 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 10934 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






















#line 11005 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            








                                            




                                            
















































































































































































































#line 11236 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11250 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11264 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11278 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11292 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11306 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11320 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11334 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11348 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11362 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11376 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11390 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11404 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11418 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11432 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11446 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11460 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11474 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11488 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11502 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11516 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11530 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11544 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11558 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11572 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11586 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11600 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11614 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11628 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11642 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11656 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11670 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11684 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







                                            

                                            

                                            

                                            











                                            

                                            

                                            

                                            










#line 11733 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 11766 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 11795 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
















                                            

                                            










#line 11830 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 11850 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 11872 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"







#line 11885 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            


                                            
#line 11895 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            

                                            
                                            


















































                                            




                                            

















































#line 12013 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















#line 12042 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















#line 12071 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"

















#line 12100 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 12112 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            
#line 12123 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"






#line 12152 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 12177 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"















                                            
#line 12201 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"














#line 12221 "D:\\Keil5\\ARM\\PACK\\CU_SYSC4906\\LabF14_DFP\\1.0.7\\Device\\CU\\Include\\TM4C123\\CU_TM4C123GH6PM.h"
                                            

                                            










                                            









#line 34 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"

 
extern ARM_DRIVER_USART Driver_USART0;
 

#line 45 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"



#line 56 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"









#line 72 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"









#line 89 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"






#line 101 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.h"

















typedef struct _USART_TRANSFER_INFO {
  uint32_t                rx_num;        
  uint32_t                tx_num;        
  uint8_t                *rx_buf;        
  uint8_t                *tx_buf;        
  uint32_t                rx_cnt;        
  uint32_t                tx_cnt;        
  uint8_t                 tx_def_val;    
  uint8_t                 rx_dump_val;   
  uint8_t                 sync_mode;     
} USART_TRANSFER_INFO;


typedef struct _USART_INFO {
  ARM_USART_SignalEvent_t cb_event;      
  ARM_USART_STATUS        status;        
  USART_TRANSFER_INFO     xfer;          
  uint8_t                 mode;          
  uint8_t                 flags;         
  uint32_t                baudrate;      
} USART_INFO;



typedef const struct _PIN_ID {
	uint32_t                pin;
	uint32_t                base;
	uint32_t                bitfield;
} PIN_ID;


typedef const struct _USART_PINS {
  PIN_ID                  tx;            
  PIN_ID                  rx;            
} USART_PINS;


typedef const struct _USART_CLOCK {
  uint32_t                base;       
  uint32_t                periph;     
} USART_CLOCKS;



typedef struct {
  ARM_USART_CAPABILITIES  capabilities;  
	uint32_t                periph_uart;   
	UART0_Type             *reg;	         
  USART_PINS              pins;          
  USART_CLOCKS            clk;           
  IRQn_Type               irq_num;       
  uint32_t                trig_lvl;      
  USART_INFO             *info;          
} const USART_RESOURCES;

#line 49 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.c"
#line 1 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"







 




#line 14 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 15 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 16 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 17 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 18 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 19 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 20 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 21 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 22 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 23 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 24 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 25 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 26 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 27 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"
#line 28 "D:\\Real-time\\project\\RavenOSV2Demo--MyApp\\RavenOSV2Demo--MyApp\\RTE\\RTE_Components.h"


#line 50 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.c"





static const ARM_DRIVER_VERSION usart_driver_version = { (((2) << 8) | (01)), (((2) << 8) | (01)) };









static USART_INFO USART0_Info = {0};

static const USART_RESOURCES USART0_Resources = {
  {     
    1,  




    0,  
    0,  

    0,  
    0,  
    0,  



    0,

    0,  
    0,  
    0,  



    1,  

    0,  
    0,  
    0,  
    0,  
    0,  
    0,  
    0,  
    0,  
    0,  
    0,  
  },
	  0xf0001800,
	  ((UART0_Type *) 0x4000C000UL),
	{
		{
			0x00000401,
			0x40004000UL,
			0x00000002
		},
		{
			0x00000001,
			0x40004000UL,
			0x00000001
		}
	},
    {
			0x4000C000UL,
			0xf0000800
		},
    UART0_IRQn,
    (0x00),
    &USART0_Info
};












 
int32_t USART_SetBaudrate (uint32_t         baudrate,
                           USART_RESOURCES *usart) {

    ((void (*)(uint32_t ui32Base, uint32_t ui32UARTClk, uint32_t ui32Baud, uint32_t ui32Config))((uint32_t *)(((uint32_t *)0x01000010)[1]))[5])( usart->clk.base, ((uint32_t (*)(void))((uint32_t *)(((uint32_t *)0x01000010)[13]))[24])(), baudrate,
                            (0x00000060 | 0x00000000 |
                             0x00000000));
														 
    usart->info->baudrate = baudrate;
  return 0;
}


static int32_t USART_Receive (void            *data,
                              uint32_t         num,
                              USART_RESOURCES *usart);







 
static ARM_DRIVER_VERSION USARTx_GetVersion (void) {
  return usart_driver_version;
}






 
static ARM_USART_CAPABILITIES USART_GetCapabilities (USART_RESOURCES *usart) {
  return usart->capabilities;
}








 
static int32_t USART_Initialize (ARM_USART_SignalEvent_t  cb_event,
                                 USART_RESOURCES         *usart) {

  if (usart->info->flags & (1 << 1)) {
    
    return -1;
  }

  if (usart->info->flags & (1 << 0)) {
    
    return 0;
  }

  
  usart->info->cb_event = cb_event;

  usart->info->status.tx_busy          = 0;
  usart->info->status.rx_busy          = 0;
  usart->info->status.tx_underflow     = 0;
  usart->info->status.rx_overflow      = 0;
  usart->info->status.rx_break         = 0;
  usart->info->status.rx_framing_error = 0;
  usart->info->status.rx_parity_error  = 0;

  usart->info->mode = 0;
  usart->info->xfer.tx_def_val = 0;

	
	
	
	((void (*)(uint32_t ui32Peripheral))((uint32_t *)(((uint32_t *)0x01000010)[13]))[6])(usart->periph_uart);
	((void (*)(uint32_t ui32Peripheral))((uint32_t *)(((uint32_t *)0x01000010)[13]))[6])(usart->clk.periph);

	
	
	
	((void (*)(uint32_t ui32PinConfig))((uint32_t *)(((uint32_t *)0x01000010)[4]))[26])(usart->pins.rx.pin);
	((void (*)(uint32_t ui32Port, uint8_t ui8Pins))((uint32_t *)(((uint32_t *)0x01000010)[4]))[21])(usart->pins.rx.base, usart->pins.rx.bitfield);

	
	
	
	((void (*)(uint32_t ui32PinConfig))((uint32_t *)(((uint32_t *)0x01000010)[4]))[26])(usart->pins.tx.pin);
	((void (*)(uint32_t ui32Port, uint8_t ui8Pins))((uint32_t *)(((uint32_t *)0x01000010)[4]))[21])(usart->pins.tx.base, usart->pins.tx.bitfield);
	
	










	
  usart->info->flags = (1 << 0);

  return 0;
}






 
static int32_t USART_Uninitialize (USART_RESOURCES *usart) {

  if (usart->info->flags & (1 << 1)) {
    
    return -1;
  }

  if (usart->info->flags == 0) {
    
    return 0;
  }

  
  usart->info->flags = 0;

  return 0;
}







 
static int32_t USART_PowerControl (ARM_POWER_STATE  state,
                                   USART_RESOURCES *usart) {

  if ((usart->info->flags & (1 << 0)) == 0) {
    
    return -1;
  }

  if (usart->info->status.rx_busy == 1) {
    
    return -2;
  }

  if (usart->info->flags & (1 << 5)) {
    
    return -2;
  }

  switch (state) {
    case ARM_POWER_OFF:
      if ((usart->info->flags & (1 << 1)) == 0)
        return 0;


			((void (*)(uint32_t ui32Base, uint32_t ui32IntFlags))((uint32_t *)(((uint32_t *)0x01000010)[1]))[18])(usart->clk.base, 0x010 | 0x040);

      usart->info->flags = (1 << 0);
      break;

    case ARM_POWER_LOW:
      return -4;

    case ARM_POWER_FULL:
      if (usart->info->flags & (1 << 1))
        return 0;

      usart->info->flags = (1 << 1) | (1 << 0);

      



      break;

    default: return -4;
  }
  return 0;
}










 
static int32_t USART_Send (const void            *data,
                                 uint32_t         num,
                                 USART_RESOURCES *usart) {

  if ((data == 0) || (num == 0)) {
    
    return -5;
  }

  if ((usart->info->flags & (1 << 2)) == 0) {
    
    return -1;
  }

  if (usart->info->flags & (1 << 5)) {
    
    return -2;
  }

  
  usart->info->flags |= (1 << 5);

  
  usart->info->xfer.tx_buf = (uint8_t *)data;
  usart->info->xfer.tx_num = num;
  usart->info->xfer.tx_cnt = 0;

  
  
  
  while(num--)
  {
    
    
    
	__disable_irq();
	((void (*)(uint32_t ui32Base, unsigned char ucData))((uint32_t *)(((uint32_t *)0x01000010)[1]))[0])(usart->clk.base, usart->info->xfer.tx_buf[usart->info->xfer.tx_cnt++]);
	__enable_irq();
	((void (*)(uint32_t ui32Count))((uint32_t *)(((uint32_t *)0x01000010)[13]))[34])(((uint32_t (*)(void))((uint32_t *)(((uint32_t *)0x01000010)[13]))[24])() / (1000 * 3));
  }	

  
  usart->info->flags &= ~(1 << 5) ;
		
  return 0;
}










 
static int32_t USART_Receive (void            *data,
                              uint32_t         num,
                              USART_RESOURCES *usart) {

  if ((data == 0) || (num == 0)) {
    
    return -5;
  }

  if ((usart->info->flags & (1 << 2)) == 0) {
    
    return -1;
  }

  
  if (usart->info->status.rx_busy == 1) 
    return -2;

  
  usart->info->status.rx_busy = 1;

  
  usart->info->xfer.rx_num = num;

  
  usart->info->status.rx_break          = 0;
  usart->info->status.rx_framing_error  = 0;
  usart->info->status.rx_overflow       = 0;
  usart->info->status.rx_parity_error   = 0;

  
  usart->info->xfer.rx_buf = (uint8_t *)data;
  usart->info->xfer.rx_cnt =            0;

  
  if ((usart->info->mode == (0x02UL << 0)) ||
      (usart->info->mode == (0x03UL << 0) )) {
    if (usart->info->xfer.sync_mode == ( 1 )) {
      
    }
  }

  
  if (usart->reg->DMACTL) {

  
  } else {
    
  }
	
  return 0;
}












 
static int32_t USART_Transfer (const void             *data_out,
                                     void             *data_in,
                                     uint32_t          num,
                                     USART_RESOURCES  *usart) {
  int32_t status;

  if ((data_out == 0) || (data_in == 0) || (num == 0)) {
    
    return -5;
  }

  if ((usart->info->flags & (1 << 2)) == 0) {
    
    return -1;
  }

  if ((usart->info->mode == (0x02UL << 0)) ||
      (usart->info->mode == (0x03UL << 0) )) {

    
    usart->info->xfer.sync_mode = (( 1 ) | ( 2 ));

    
    status = USART_Receive (data_in, num, usart);
    if (status != 0) return status;

    
    status = USART_Send (data_out, num, usart);
    if (status != 0) return status;

  } else {
    
    return -1;
  }
  return 0;
}






 
static uint32_t USART_GetTxCount (USART_RESOURCES *usart) {
  return usart->info->xfer.tx_cnt;
}






 
static uint32_t USART_GetRxCount (USART_RESOURCES *usart) {
  return usart->info->xfer.rx_cnt;
}










 
static int32_t USART_Control (uint32_t          control,
                              uint32_t          arg,
                              USART_RESOURCES  *usart) {
  uint32_t mode;
  uint32_t mcr;

  if ((usart->info->flags & (1 << 1)) == 0) {
    
    return -1;
  }

  switch (control & (0xFFUL << 0)) {
    case (0x01UL << 0):
      mode = (0x01UL << 0);
      break;
    case (0x02UL << 0):
      if (usart->capabilities.synchronous_master) {
        
      } else return (-6 - 1);
      mode = (0x02UL << 0);
      break;
    case (0x03UL << 0):
      if (usart->capabilities.synchronous_slave) {
        
      } else return (-6 - 1);
      mode = (0x03UL << 0);
      break;
    case (0x05UL << 0):
      if (usart->capabilities.irda) {
        
      } else return (-6 - 1);
      mode = (0x05UL << 0);
      break;
    
    case (0x10UL << 0):
      usart->info->xfer.tx_def_val = arg;
      return 0;

    
    case (0x11UL << 0):
      if (usart->capabilities.irda) {
        if (arg == 0) {
          usart->reg->ICR &= ~((1 << 1));
        } else {

        }
      } else return -1;
      return 0;

    
    case (0x15UL << 0):
      if (arg) {
        if (usart->info->mode != (0x06UL << 0)) {
          
        }
        usart->info->flags |= (1 << 3);
      } else {
        usart->info->flags &= ~(1 << 3);
        if (usart->info->mode != (0x06UL << 0)) {
          

        }
      }
      return 0;

    
    case (0x16UL << 0):
      
      return 0;

    
    case (0x17UL << 0):
      return 0;

    
    case (0x18UL << 0):
      

      
      usart->info->flags &= ~(1 << 5);
      return 0;

    
    case (0x19UL << 0):
      

      
      usart->info->status.rx_busy = 0;
      return 0;

    
    case (0x1AUL << 0):
     
      

      
      usart->info->status.rx_busy = 0;
      usart->info->flags &= ~(1 << 5);
     
      return 0;

    
    default: return -4;
  }

  
  if ( usart->info->status.rx_busy ||
      (usart->info->flags & (1 << 5))) {
    return -2;
  }

  
  if (usart->reg) {

    switch (control & (3UL << 16)) {
      case (0UL << 16):
        break;
      case (1UL << 16):
        if (usart->capabilities.flow_control_rts)
          mcr |= (1 << 6);
        else return (-6 - 6);
        break;
      case (2UL << 16):
        if (usart->capabilities.flow_control_cts)
          mcr |= (1 << 7);
        else return (-6 - 6);
        break;
      case (3UL << 16):
        if (usart->capabilities.flow_control_rts && 
            usart->capabilities.flow_control_cts) {
          mcr |= ((1 << 6) | (1 << 7));
        } else return (-6 - 6);
        break;
      default:
        return (-6 - 6);
    }
  }

  
  if ((mode == (0x02UL << 0)) ||
      (mode == (0x03UL << 0) )) {

    

    
    if ((control & (1UL << 17)) != (0UL << 17))
      return (-6 - 7);

    
    if ((control & (1UL << 18)) != (1UL << 18))
      return (-6 - 8);
  }

  
  if (USART_SetBaudrate (arg, usart) == -1)
    return (-6 - 2);    
	
  
  usart->info->mode = mode;

  

  

  

  

  

  

  

	((void (*)(uint32_t ui32Base))((uint32_t *)(((uint32_t *)0x01000010)[1]))[7])(usart->clk.base);
  
  usart->info->flags |= (1 << 2);

  return 0;
}






 
static ARM_USART_STATUS USART_GetStatus (USART_RESOURCES *usart) {
  return usart->info->status;
}








 
static int32_t USART_SetModemControl (ARM_USART_MODEM_CONTROL  control,
                                      USART_RESOURCES         *usart) {

  if ((usart->info->flags & (1 << 2)) == 0) {
    
    return -1;
  }

  

  return 0;
}






 
static ARM_USART_MODEM_STATUS USART_GetModemStatus (USART_RESOURCES *usart) {
  ARM_USART_MODEM_STATUS modem_status;
  uint32_t msr;

  if (usart->reg &&
     (usart->info->flags & (1 << 2))) {



    modem_status.cts = (msr & (1 << 4) ? (1) : (0));
    modem_status.dsr = (msr & (1 << 5) ? (1) : (0));
    modem_status.ri  = (msr & (1 << 6)  ? (1) : (0));
    modem_status.dcd = (msr & (1 << 7) ? (1) : (0));
  } else {
     modem_status.cts = 0;
     modem_status.dsr = 0;
     modem_status.ri  = 0;
     modem_status.dcd = 0;
  }

  return modem_status;
}





 
static void USART_IRQHandler (USART_RESOURCES *usart) {
  uint32_t event;

  event = 0;
    

   

    

    
#line 800 "RTE\\CMSIS_Driver\\TM4C123GH6PM\\USART_TM4C123.c"

  if (usart->info->cb_event && event)
    usart->info->cb_event (event);
}


static ARM_USART_CAPABILITIES USART0_GetCapabilities (void) {
  return USART_GetCapabilities (&USART0_Resources);
}
static int32_t USART0_Initialize (ARM_USART_SignalEvent_t cb_event) {
  return USART_Initialize (cb_event, &USART0_Resources);
}
static int32_t USART0_Uninitialize (void) {
  return USART_Uninitialize(&USART0_Resources);
}
static int32_t USART0_PowerControl (ARM_POWER_STATE state) {
  return USART_PowerControl (state, &USART0_Resources);
}
static int32_t USART0_Send (const void *data, uint32_t num) {
  return USART_Send (data, num, &USART0_Resources);
}
static int32_t USART0_Receive (void *data, uint32_t num) {
  return USART_Receive (data, num, &USART0_Resources);
}
static int32_t USART0_Transfer (const void      *data_out,
                                      void      *data_in,
                                      uint32_t   num) {
  return USART_Transfer (data_out, data_in, num, &USART0_Resources);
}
static uint32_t USART0_GetTxCount (void) {
  return USART_GetTxCount (&USART0_Resources);
}
static uint32_t USART0_GetRxCount (void) {
  return USART_GetRxCount (&USART0_Resources); 
}
static int32_t USART0_Control (uint32_t control, uint32_t arg) {
  return USART_Control (control, arg, &USART0_Resources);
}
static ARM_USART_STATUS USART0_GetStatus (void) {
  return USART_GetStatus (&USART0_Resources);
}
static int32_t USART0_SetModemControl (ARM_USART_MODEM_CONTROL control) {
  return USART_SetModemControl (control, &USART0_Resources);
}
static ARM_USART_MODEM_STATUS USART0_GetModemStatus (void) {
  return USART_GetModemStatus (&USART0_Resources);
}
void UART0_IRQHandler (void) {
  USART_IRQHandler (&USART0_Resources);
}


ARM_DRIVER_USART Driver_USART0 = {
    USARTx_GetVersion,
    USART0_GetCapabilities,
    USART0_Initialize,
    USART0_Uninitialize,
    USART0_PowerControl,
    USART0_Send, 
    USART0_Receive,
    USART0_Transfer,
    USART0_GetTxCount,
    USART0_GetRxCount,
    USART0_Control,
    USART0_GetStatus,
    USART0_SetModemControl,
    USART0_GetModemStatus
};
