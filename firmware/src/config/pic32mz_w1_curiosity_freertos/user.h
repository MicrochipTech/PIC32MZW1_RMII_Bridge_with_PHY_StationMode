/*******************************************************************************
  User Configuration Header

  File Name:
    user.h

  Summary:
    Build-time configuration header for the user defined by this project.

  Description:
    An MPLAB Project may have multiple configurations.  This file defines the
    build-time options for a single configuration.

  Remarks:
    It only provides macro definitions for build-time configuration options

*******************************************************************************/

#ifndef USER_H
#define USER_H

#include <xc.h>
#include "sys/kmem.h"
// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: User Configuration macros
// *****************************************************************************
// *****************************************************************************
#define MICROCHIP_TCPIP
    
// *****************************************************************************
// *****************************************************************************
// Section: BSP Macros
// *****************************************************************************
// *****************************************************************************
/*** LED Macros for LED_RED ***/
#define LED_RED_Toggle() (LATKINV = (1<<1))
#define LED_RED_Get() ((PORTK >> 1) & 0x1)
#define LED_RED_On() (LATKSET = (1<<1))
#define LED_RED_Off() (LATKCLR = (1<<1))
/*** LED Macros for LED_GREEN ***/
#define LED_GREEN_Toggle() (LATKINV = (1<<3))
#define LED_GREEN_Get() ((PORTK >> 3) & 0x1)
#define LED_GREEN_On() (LATKSET = (1<<3))
#define LED_GREEN_Off() (LATKCLR = (1<<3))
/*** SWITCH Macros for SWITCH1 ***/
#define SWITCH1_Get() ((PORTA >> 10) & 0x1)
#define SWITCH1_STATE_PRESSED 0
#define SWITCH1_STATE_RELEASED 1
    
#define LED_ON()        LED_RED_On()
#define LED_OFF()       LED_RED_Off()
#define LED_TOGGLE()    LED_RED_Toggle()

#define SWITCH_GET()    SWITCH1_Get()
#define SWITCH_PRESSED  SWITCH1_STATE_PRESSED

#define APP_TIMER_START     CORETIMER_Start
#define APP_TIMER_DelayMs   CORETIMER_DelayMs

#define BTL_TRIGGER_RAM_START   KVA0_TO_KVA1(0x80000000)

#define DCACHE_CLEAN_BY_ADDR(start, sz)

static inline void APP_SystemReset( void )
{
    /* Perform system unlock sequence */ 
    SYSKEY = 0x00000000;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;

    RSWRSTSET = _RSWRST_SWRST_MASK;
    (void)RSWRST;
}

//DOM-IGNORE-BEGIN
#ifdef __cplusplus
}
#endif
//DOM-IGNORE-END

#endif // USER_H
/*******************************************************************************
 End of File
*/
