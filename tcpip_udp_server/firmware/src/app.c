/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

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
#include <stdarg.h>
#include "app.h"

#include "tcpip/tcpip.h"

#define SERVER_PORT 9760
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
#define APP_DOWNLOADER_BRIDGE_UART_RX_SIZE 128
#define APP_ETHERNET_BRIDGE_BUFF_RX_SIZE   128
#define APP_ETHERNET_BRIDGE_BUFF_TX_SIZE   256

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

APP_DATA appData;

uint8_t DownloaderUARTRxBuffer[APP_DOWNLOADER_BRIDGE_UART_RX_SIZE];

char EthernetBridgeRxBuffer[APP_ETHERNET_BRIDGE_BUFF_RX_SIZE];
char EthernetBridgeTxBuffer[APP_ETHERNET_BRIDGE_BUFF_TX_SIZE];

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

void Ethernet_Bridge_UART_Callback(uintptr_t context)
{
    appData.uartState = APP_TCPIP_BRIDGE_UART_DATA_READY;
    
}



void Downloader_UART_Read_Callback(uintptr_t context)
{
    appData.downlader_cb_cnt = UART2_ReadCountGet();    
}

void Downloader_UART_Write_Callback(UART_EVENT event, uintptr_t context)
{
    UART2_Read(DownloaderUARTRxBuffer, APP_DOWNLOADER_BRIDGE_UART_RX_SIZE);
    SYS_TIME_CallbackRegisterMS(Downloader_UART_Read_Callback, 0, 100, SYS_TIME_SINGLE);                       
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/

void Ethernet_Bridge_UART_Task(void)
{
    switch(appData.uartState) 
    {     
        case APP_TCPIP_BRIDGE_UART_ENABLE:
        {
            UART1_ReadCallbackRegister(Ethernet_Bridge_UART_Callback, 0);    
            appData.uartState = APP_TCPIP_BRIDGE_UART_READ;
            break;
        }
        case APP_TCPIP_BRIDGE_UART_READ:
        {            
            SYS_TIME_CallbackRegisterMS(Ethernet_Bridge_UART_Callback, 0, 300, SYS_TIME_SINGLE);
            memset(EthernetBridgeRxBuffer, 0 , APP_ETHERNET_BRIDGE_BUFF_RX_SIZE);
            UART1_ReadAbort();
            UART1_Read(EthernetBridgeRxBuffer, APP_ETHERNET_BRIDGE_BUFF_RX_SIZE-1); 
            appData.uartState = APP_TCPIP_BRIDGE_UART_READ_WAIT;                
            break;
        }
        case APP_TCPIP_BRIDGE_UART_DATA_READY:         
        {            
            if(UART1_ReadCountGet())
                SYS_CONSOLE_MESSAGE(EthernetBridgeRxBuffer);            
            appData.uartState = APP_TCPIP_BRIDGE_UART_READ;            
            break;
        }
        case APP_TCPIP_BRIDGE_UART_DISABLE:
        {
            UART1_ReadCallbackRegister(NULL, 0);
            break;
        }
        case APP_TCPIP_BRIDGE_BOOTLOADER_LOOP:
        {
            uint8_t inByte;              
            while(1)
            {
                if(UART2_Read(&inByte, 1))
                {                    
                    UART1_Write((void *)&inByte, 1);
                }
                if(UART1_Read((void *)&inByte, 1))
                {                    
                    UART2_Write(&inByte, 1);
                }
            }
                       
        }
        break;  
        default:
            break;
    }     
}

static int _Command_Bridge(SYS_CMD_DEVICE_NODE* pCmdIO, int argc, char** argv)
{
    const void* cmdIoParam = pCmdIO->cmdIoParam;
    
    if (argc < 2)
    {
        (*pCmdIO->pCmdApi->msg)(cmdIoParam, "Usage: bridge on/off\r\n");
        (*pCmdIO->pCmdApi->msg)(cmdIoParam, "Ex: bridge on\r\n");
        return false;
    }
    if (memcmp(argv[1], "on", 2) == 0)
    {
        appData.uartState = APP_TCPIP_BRIDGE_UART_ENABLE;
        appData.bridgeUart = true;
        
    }
    else if (memcmp(argv[1], "off", 3) == 0)
    {
        appData.uartState = APP_TCPIP_BRIDGE_UART_DISABLE;
        appData.bridgeUart = false;
    }
    else if(memcmp(argv[1], "btl", 3) == 0)
    {
        appData.uartState = APP_TCPIP_BRIDGE_BOOTLOADER_LOOP;
        appData.bridgeUart = false;
    }
    else if(memcmp(argv[1], "tunnel", 6) == 0)
    {
        if(appData.bridgeUart)
        {            
            memset(EthernetBridgeTxBuffer, 0 , APP_ETHERNET_BRIDGE_BUFF_TX_SIZE);
            for(int args = 2; args < argc; args++)
            {
                sprintf(EthernetBridgeTxBuffer+strlen(EthernetBridgeTxBuffer), "%s ", argv[args]);
            }                                                
            UART1_Write(EthernetBridgeTxBuffer, strlen(EthernetBridgeTxBuffer));
            while(UART1_WriteCountGet() != strlen(EthernetBridgeTxBuffer));
            UART1_Write("\r", 1);                        
        }            
    }
    else
    {
        (*pCmdIO->pCmdApi->msg)(cmdIoParam, "Invalid argument!\r\n");
        return false;
    }
    return true;
}


static const SYS_CMD_DESCRIPTOR    ethBridgeCmdTbl[]= {
{"bridge",     (SYS_CMD_FNC)_Command_Bridge,              ": Bridge UART to peer PHY board"},
};

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
    appData.state = APP_TCPIP_WAIT_INIT;
    
    SYS_CMD_ADDGRP(ethBridgeCmdTbl, sizeof(ethBridgeCmdTbl)/sizeof(*ethBridgeCmdTbl), "bridge", ": Ethernet PHY bridge commands");
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
    SYS_STATUS          tcpipStat;
    const char          *netName, *netBiosName;
    static IPV4_ADDR    dwLastIP[2] = { {-1}, {-1} };
    IPV4_ADDR           ipAddr;
    int                 i, nNets;
    TCPIP_NET_HANDLE    netH;

    Ethernet_Bridge_UART_Task();    
    switch(appData.state)
    {                       
        case APP_TCPIP_WAIT_INIT:
            tcpipStat = TCPIP_STACK_Status(sysObj.tcpip);
            if(tcpipStat < 0)
            {   // some error occurred
                SYS_CONSOLE_MESSAGE(" APP: TCP/IP stack initialization failed!\r\n");
                appData.state = APP_TCPIP_ERROR;
            }
            else if(tcpipStat == SYS_STATUS_READY)
            {
                // now that the stack is ready we can check the 
                // available interfaces 
                nNets = TCPIP_STACK_NumberOfNetworksGet();
                for(i = 0; i < nNets; i++)
                {

                    netH = TCPIP_STACK_IndexToNet(i);
                    netName = TCPIP_STACK_NetNameGet(netH);
                    netBiosName = TCPIP_STACK_NetBIOSName(netH);

#if defined(TCPIP_STACK_USE_NBNS)
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS enabled\r\n", netName, netBiosName);
#else
                    SYS_CONSOLE_PRINT("    Interface %s on host %s - NBNS disabled\r\n", netName, netBiosName);
#endif  // defined(TCPIP_STACK_USE_NBNS)
                    (void)netName;          // avoid compiler warning 
                    (void)netBiosName;      // if SYS_CONSOLE_PRINT is null macro

                }
                appData.state = APP_TCPIP_WAIT_FOR_IP;

            }
            break;


        case APP_TCPIP_WAIT_FOR_IP:

            // if the IP address of an interface has changed
            // display the new value on the system console
            nNets = TCPIP_STACK_NumberOfNetworksGet();

            for (i = 0; i < nNets; i++)
            {
                netH = TCPIP_STACK_IndexToNet(i);
                
				if(!TCPIP_STACK_NetIsReady(netH))
				{
					return; // interface not ready yet!
				}
							
				ipAddr.Val = TCPIP_STACK_NetAddress(netH);
                if(dwLastIP[i].Val != ipAddr.Val)
                {
                    dwLastIP[i].Val = ipAddr.Val;

                    SYS_CONSOLE_MESSAGE(TCPIP_STACK_NetNameGet(netH));
                    SYS_CONSOLE_MESSAGE(" IP Address: ");
                    SYS_CONSOLE_PRINT("%d.%d.%d.%d \r\n", ipAddr.v[0], ipAddr.v[1], ipAddr.v[2], ipAddr.v[3]);                                     
                }
            }
			// all interfaces ready. Could start transactions!!!
			appData.state = APP_TCPIP_OPENING_SERVER;  
            break;
			
        case APP_TCPIP_OPENING_SERVER:
        {
            SYS_CONSOLE_PRINT("Waiting for Client Connection on port: %d\r\n", SERVER_PORT);
            appData.socket = TCPIP_UDP_ServerOpen(IP_ADDRESS_TYPE_IPV4, SERVER_PORT, 0);
            if (appData.socket == INVALID_SOCKET)
            {
                SYS_CONSOLE_MESSAGE("Couldn't open server socket\r\n");
                break;
            }
            appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
        }
        break;
        
        case APP_TCPIP_WAIT_FOR_CONNECTION:
        {
            if (!TCPIP_UDP_IsConnected(appData.socket))
            {
                return;
            }
            else
            {
                // We got a connection
                appData.state = APP_TCPIP_SERVING_CONNECTION;
                SYS_CONSOLE_MESSAGE("Received a connection\r\n");
            }
        }
        break;
        
        case APP_TCPIP_SERVING_CONNECTION:
        {
            if (!TCPIP_UDP_IsConnected(appData.socket))
            {
                appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
                SYS_CONSOLE_MESSAGE("Connection was closed\r\n");
                break;
            }
            int16_t wMaxGet, wMaxPut, wCurrentChunk;
            uint16_t w, w2;
            uint8_t AppBuffer[32 + 1];
            memset(AppBuffer, 0, sizeof(AppBuffer));
            // Figure out how many bytes have been received and how many we can transmit.
            wMaxGet = TCPIP_UDP_GetIsReady(appData.socket);	// Get UDP RX FIFO byte count
            wMaxPut = TCPIP_UDP_PutIsReady(appData.socket);

            //SYS_CONSOLE_PRINT("\t%d bytes are available.\r\n", wMaxGet);
            if (wMaxGet == 0)
            {
                break;
            }

            if (wMaxPut < wMaxGet)
            {
                wMaxGet = wMaxPut;
            }

            SYS_CONSOLE_PRINT("RX Buffer has %d bytes in it\n", wMaxGet);

            // Process all bytes that we can
            // This is implemented as a loop, processing up to sizeof(AppBuffer) bytes at a time.
            // This limits memory usage while maximizing performance.  Single byte Gets and Puts are a lot slower than multibyte GetArrays and PutArrays.
            wCurrentChunk = sizeof(AppBuffer) - 1;
            for(w = 0; w < wMaxGet; w += sizeof(AppBuffer) - 1)
            {
                // Make sure the last chunk, which will likely be smaller than sizeof(AppBuffer), is treated correctly.
                if(w + sizeof(AppBuffer) - 1 > wMaxGet)
                    wCurrentChunk = wMaxGet - w;

                // Transfer the data out of the TCP RX FIFO and into our local processing buffer.
                int rxed = TCPIP_UDP_ArrayGet(appData.socket, AppBuffer, sizeof(AppBuffer) - 1);

                SYS_CONSOLE_PRINT("\tReceived a message of '%s' and length %d\r\n", AppBuffer, rxed);

                // Perform the "ToUpper" operation on each data byte
                for(w2 = 0; w2 < wCurrentChunk; w2++)
                {
                    i = AppBuffer[w2];
                    if(i >= 'a' && i <= 'z')
                    {
                            i -= ('a' - 'A');
                            AppBuffer[w2] = i;
                    }
                    else if(i == '\x1b')   // escape
                    {
                        SYS_CONSOLE_MESSAGE("Connection was closed\r\n");
                    }
                }
                AppBuffer[w2] = 0;

                SYS_CONSOLE_PRINT("\tSending a message: '%s'\r\n", AppBuffer);

                // Transfer the data out of our local processing buffer and into the TCP TX FIFO.
                TCPIP_UDP_ArrayPut(appData.socket, AppBuffer, wCurrentChunk);

                appData.state = APP_TCPIP_WAIT_FOR_CONNECTION;
            }
            TCPIP_UDP_Flush(appData.socket);
            TCPIP_UDP_Discard(appData.socket);
        }
        break;
                                          
        default:
            break;
    }
}
 

/*******************************************************************************
 End of File
 */
