# Ethernet to Wi-Fi Bridge with PHY 
<img src="images/IoT-Made-Easy-Logo.png" width=100>

> "Wireless Made Easy!" - This example application acts as a bridge to bridge up Wi-Fi and ETH interface of WFI32E01 device, WFI32E01 set as Wi-Fi Station (STA) mode to connect to Access point(AP). The WFI32E01 device help connect ETH end node to the Access point (AP) in this example.

Devices: **WFI32E01**

## Description

Ethernet to Wi-Fi Bridge with PHY is a ready-to-use software solution to easily add Wi-Fi connectivity to any existing Ethernet-based board or finished product.  This solution can be executed on any [WFI32E01](https://www.microchip.com/en-us/product/WFI32E01PE) based design with RJ-45 connector. Following features are supported out of box. If required, users are free to customize or add other features using the source code included in this project.
The solutions provide following feature sets: -

- Converts any Ethernet End Node into a Wi-Fi node
- Plug and play with just one time configuration
- Provided field Device Firmware Upgrade (DFU)
- Enables Wi-Fi configuration through host interface
- Flexibility to access Wi-Fi module command line interface (CLI)
- Higher throughput with reduced software overhead
- Very minimum hardware changes


The goal is to provide a ready to use solution which enables wireless connectivity on an Ethernet End node. 

The project provides a single UART interface for both device firmware upgrade and device configuration. It enables field upgrade of WFI32E01 wireless module and run time access to control the wireless interface. 


## Software components 

The solution project has been created and tested with the following Software Development Tools:
- [MPLAB X IDE v6.00](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)
- [MPLAB XC32 v3.01](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers)
- MPLAB Harmony Modules
   - mhc v3.8.2
   - csp v3.10.0
   - core v3.10.0
   - wireless_wifi v3.7.0 
   - dev_packs v3.10.0
   - wireless_system_pic32mzw1_wfi32e01 v3.6.1
   - wolfssl v4.7.0
   - net v3.7.4
   - crypto v3.7.4
   - CMSIS-FreeRTOS v10.3.1
   - [UART Bootloader module](https://github.com/Microchip-MPLAB-Harmony/bootloader_apps_uart) v3.1.0 

## Hardware modules
Following hardware components were used to verify and test the solution. Any other custom setup consisting of a WFI32E01-based board and/or any Ethernet end node board would also work, provided custom boards implement the hardware interfaces as stipulated.

   - [WFI32E Curiosity board](https://www.microchip.com/en-us/development-tool/EV12F11A) -> The Ethernet to Wi-Fi Bridge board
   - [PIC32MZ EF Starter kit](https://www.microchip.com/en-us/development-tool/DM320007-C) -> Ethernet End node
   - [PHY Daughter board]() -> Ethernet PHY board to connect RJ-45 cable
   - Access point or Wi-Fi Router
   - Micro and Mini USB cables
   - Ethernet cable

Following picture illustrates the connections between Ethernet to Wi-Fi Bridge board and Ethernet End Node.

![](images/bridge_diagram.png)

## Block Diagram

The following diagram illustrates various software components involved in this solution

![](images/block_diagram.png)

There are mainly 3 software components in this solution. 

**1. WFI32E01 UART based Bootloader**

The purpose of the bootloader is to enable the application/firmware upgrade though the UART interface. The UART bootloader project at ../bootloader_apps_uart/apps/uart_bootloader/bootloader/firmware/pic32mz_w1_curiosity.X is flashed into the WFI32E01 module using the MPLABX tools. It enables the capability to update the WFI32E01 device in the field. Refer to the UART based bootloader user guide at the [link](https://github.com/Microchip-MPLAB-Harmony/bootloader_apps_uart/blob/master/apps/uart_bootloader/docs/readme_pic32mz_w1_curiosity.md)

**2. WFI32E01 Ethernet bridge Application**

The main application demonstrates how a Ethernet End Node can connect to a Wi-Fi network through WFI32E01 device. The WFI32E01 device is set as Wi-Fi Station (STA) mode to connect to a Access point (AP) and act as a Wi-Fi to Ethernet bridge to bridge up the Wi-Fi and Ethernet interfaces. In this setup, Ethernet End Node will connect to the Ethernet connector of WFI32E01 device and exchange data with the Access Point through the WFI32E01 device. 

The application processes the IP packets that is received from the Wi-Fi and Ethernet interface at bridge.c. The code in this file act as a transparent bridge to receive and forward the network packets to and from both Wi-Fi and Ethernet interface. It sets the MAC address of WFI32E01 module to be the same as Ethernet End Node so that the Ethernet end node can communicate with the AP. As both Ethernet end node and WFI32E01 are using the same mac address, they are acting as a single unit in the network.

Note:- The bridge application does not use the H3 L2 Bridge feature. 

The user would need to configure the Home AP credentials (like SSID and security items). The Wi-Fi service running on WFI32E01 device will use the credentials to connect to the Home AP. The default application will try to establish a connection to AP "DEMO_AP" with WPA2 security and password as a "password". 

The solution exports the WFI32E01 module command line interface with the Ethernet End Node device over the UART interface. It enables the Ethernet End Node to configure the Wi-Fi credentials and also provide access to all the CLI commands. 

**3. Ethernet End Node Application**

It is an PIC32MZ EF SK based network application (tcpip_udp_server), it acts as the Ethernet End Node application with a UDP server listening for incoming connection. It uses the Ethernet PHY interface to access the WFI32E01 board Wi-Fi interface. 

The Ethernet End Node application can access the WFI32E01 CLI commands, the UART console interface tunnels the user commands to WFI32E01 UART interface.

The "bridge" command is used to link the WFI32E01 CLI interface on PIC32MZ EF SK console. 
   - '*>bridge btl*' -> Tunnels the UART lines to perform the WFI32E01 Firmware upgrade 
   - '*>bridge on/off*' -> Enables/Disables the WFI32E01 CLI interface on the PIC32MZ console interface
   - '*>bridge tunnel <WFI32E01 CLI commands>* -> Triggers the WFI32E01 CLI commands from the PIC32MZ console interface


## Downloading and building the application

To download or clone this application from Github, issue the following git command.

>git clone --recurse-submodules https://github.com/c21415/PIC32MZW1_RMII_Bridge_with_PHY_StationMode.git

The successful cloning of the repo would result in following folders

![](images/repo_folder_structure.png)

| Description  | Path | Project Name  |
|:----------|:----------|:----------|
| MPLABX project for WFI32E01 UART Bootloader    | ./bootloader_apps_uart/apps/uart_bootloader/bootloader/firmware    | pic32mz_w1_curiosity.X    |
| MPLABX project for PIC32MZ W1 Curiosity Board    | ./firmware  | wifi_eth_bridge_pic32mz_w1_curiosity_freertos.X    |
| MPLABX project for PIC32 MZ EF Starter Kit(Ethernet Host board)    | tcpip_udp_server/firmware    | pic32mz_ef_sk.X    |


Download and install a serial terminal program like [TeraTerm](https://osdn.net/projects/ttssh2/releases/). Launch TeraTerm program and configure the serial ports mounted with: **115200 bps, 8 N 1**

#### Prepare Ethernet End Node (PIC32MZ EF Starter Kit) Board

1. Open the Ethernet Bridge application project *./tcpip_udp_server/firmware/pic32mz_ef_sk.X* in the MPLABX IDE

2. Build and program the application on PIC32MZ EF SK(Starter Kit)


#### Prepare WFI32E Curiosity Board

1. Connect the Debug USB port on the board to the computer using a micro USB cable

2. Open the Ethernet Bridge application project *./firmware/wifi_eth_bridge_pic32mz_w1_curiosity_freertos.X* in the IDE

3. Build the project to generate the binary **(Do not program the binary)**

4. Open the bootloader project *bootloader_apps_uart/apps/uart_bootloader/bootloader/firmware/pic32mz_w1_curiosity.X* in the MPLABX IDE

5. Build and program the application using the IDE

6. Now connect the PIC32MZ EF Starter kit UART1 interface to WFI32E01 Curiosity board console UART as specified in the following table.

	| PIC32 EF Starter Kit  | WFI32E01 Curiosity Board  |
	|:----------|:----------|
	| J12-Pin#15 (U1Tx)    | J207-Pin#13 (U1Rx)       |
	| J12-Pin#37 (U1Rx)    | J207-Pin#23 (U1Tx)       |
	| J12-Pin#39 (GND)   | J207-Pin#17 (GND)          |

7. Connect Ethernet End Node board's Ethernet interface to WFI32E01 Cuisoity board Ethernet connector using a Ethernet(RJ45) cable

8. Connect the Debug USB port on PIC32MZ EF SK board to the computer using a mini USB cable and configure the serial settings as follows:
    - Baud : 115200
    - Data : 8 Bits
    - Parity : None
    - Stop : 1 Bit
    - Flow Control : None

9. Open the Ethernet End Node (PIC32MZ EF SK board) debug console using the TeraTerm and issue the following command to tunnel the bootloader interface with WFI32E01

>bridge btl
>

10. Now close the TeraTerm and run the **btl_host.py** from command prompt to program the Ethernet to Wi-Fi bridge application binary on WFI32E01 module

>cd bootloader/tools
>
>python btl_host.py -v -i < COM PORT of Ethernet End Node console > -d pic32mzw -a 0x90000000 -f ./firmware/wifi_eth_bridge_pic32mz_w1_curiosity_freertos.X/dist/pic32mz_w1_curiosity_freertos/production/wifi_eth_bridge_pic32mz_w1_curiosity_freertos.X.production.bin

11. Following snapshot shows output of successfully programming the test application
    - **Rebooting** and **Reboot Done** messages in below output signifies that bootloading is successful


![](./images/btl_host_output.png)

12. If above step is successful then the **RED LED (D202)** should start blinking

Note: - Press and hold of the Switch **SW1/SW200** can trigger Bootloader from main application 


## Running the Application


1.	On the PIC32MZ EF SK(Starter Kit) console interface issue the *bridge on* command 

2.  Now PIC32MZ EF SK can issue the *bridge tunnel <WFI32E01 board CLI commands>* from its console

3.  Configure the home AP or Wi-Fi router details using the following command

> bridge tunnel **wifiprov set 0 1 GEN 0 1 3 wsn brucenegley**

4.  Above command will modify the Wi-Fi configuration and make the WFI32E01 device to connect with *wsn* router with *brucenegley* password with *mixed mode(3)* security

Following command sequence showcases the method to change the Wi-Fi configuration on the WFI32E01 board.

![](images/uart_cli_bridge.png)

5.   Now the WFI32E01 device will connect to provided home AP and bridges the Wi-Fi link to Ethernet peer PIC32MZ EF SK.

6.   The PIC32MZ EF SK board gets the DHCP resolved and *netinfo* command shown above shows its IP address


9.	Now any client connected to same home AP can access the PIC32MZ EF SK board.


10. The tcpip_udp_server application can be accessed from any UDP client in the same network


![](images/bridge_log2.png)

