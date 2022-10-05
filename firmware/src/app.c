/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "system/console/sys_console.h"
#include "tcpip/src/tcpip_private.h"
#include "tcpip/src/arp_private.h"
#include "tcpip/tcpip_manager.h"


#define BTL_TRIGGER_PATTERN (0x5048434DUL)
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

static uint32_t *ramStart = (uint32_t *)BTL_TRIGGER_RAM_START;

APP_DATA appData;

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/
#if 0
bool pktEthHandler(TCPIP_NET_HANDLE hNet, struct _tag_TCPIP_MAC_PACKET* rxPkt, uint16_t frameType, const void* hParam) {
    //bool ret_val = false;
    ARP_PACKET      *pArpPkt;
    SYS_CONSOLE_PRINT("pktEthHandler In\r\n");
    
    // Obtain the incoming ARP packet and process
    pArpPkt = (ARP_PACKET*)rxPkt->pNetLayer;
    
    pArpPkt->HardwareType     = TCPIP_Helper_htons(pArpPkt->HardwareType);
    pArpPkt->Protocol         = TCPIP_Helper_htons(pArpPkt->Protocol);
    pArpPkt->Operation        = TCPIP_Helper_htons(pArpPkt->Operation);

    // Validate the ARP packet
    if ( pArpPkt->HardwareType != HW_ETHERNET     ||
            pArpPkt->MACAddrLen != sizeof(TCPIP_MAC_ADDR)  ||
            pArpPkt->ProtocolLen != sizeof(IPV4_ADDR) )
    {
        SYS_CONSOLE_PRINT("[%s] Test: SenderMACAddr = %x:%x:%x:%x:%x:%x\r\n", __func__, pArpPkt->SenderMACAddr.v[0], pArpPkt->SenderMACAddr.v[1], pArpPkt->SenderMACAddr.v[2], pArpPkt->SenderMACAddr.v[3], pArpPkt->SenderMACAddr.v[4], pArpPkt->SenderMACAddr.v[5]);

    }
    else
    {
        SYS_CONSOLE_PRINT("arp packet\r\n");
        SYS_CONSOLE_PRINT("[%s] SenderMACAddr = %x:%x:%x:%x:%x:%x\r\n", __func__, pArpPkt->SenderMACAddr.v[0], pArpPkt->SenderMACAddr.v[1], pArpPkt->SenderMACAddr.v[2], pArpPkt->SenderMACAddr.v[3], pArpPkt->SenderMACAddr.v[4], pArpPkt->SenderMACAddr.v[5]);
    }
    return true;
}
#endif
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/
const void *MyEthHandlerParam;

// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;

            /* Add Delay for the UART Console to get enumerated after reset */
            APP_TIMER_DelayMs(1000);

            SYS_CONSOLE_MESSAGE("\n\r####### Application loaded from Bootloader #######\n\r");

            SYS_CONSOLE_MESSAGE("\n\r####### Press and Hold the Switch to trigger Bootloader #######\n\r");

            if (appInitialized)
            {

                appData.state = APP_STATE_SWITCH_PRESS_WAIT;
            }
            break;
        }


        case APP_STATE_SWITCH_PRESS_WAIT:
        {
            if (SWITCH_GET() == SWITCH_PRESSED)
            {
                appData.state = APP_STATE_TRIGGER_BOOTLOADER;
            }

            APP_TIMER_DelayMs(1000);

            LED_TOGGLE();

            break;
        }

        case APP_STATE_TRIGGER_BOOTLOADER:
        {
            printf("\n\r####### Bootloader Triggered #######\n\r");

            printf("\n\r####### Disconnect console to program new firmware from Bootloader #######\n\r");

            ramStart[0] = BTL_TRIGGER_PATTERN;
            ramStart[1] = BTL_TRIGGER_PATTERN;
            ramStart[2] = BTL_TRIGGER_PATTERN;
            ramStart[3] = BTL_TRIGGER_PATTERN;

            DCACHE_CLEAN_BY_ADDR(ramStart, 16);

            APP_SystemReset();
        }
        
        case APP_STATE_SERVICE_TASKS:
        {
            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
