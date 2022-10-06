#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk.mk)" "nbproject/Makefile-local-pic32mz_ef_sk.mk"
include nbproject/Makefile-local-pic32mz_ef_sk.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz_ef_sk/bsp/bsp.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c ../src/config/pic32mz_ef_sk/tasks.c ../src/config/pic32mz_ef_sk/initialization.c ../src/config/pic32mz_ef_sk/interrupts.c ../src/config/pic32mz_ef_sk/exceptions.c ../src/app.c ../src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/978308758/bsp.o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ${OBJECTDIR}/_ext/2027382860/helpers.o ${OBJECTDIR}/_ext/2027382860/icmp.o ${OBJECTDIR}/_ext/2027382860/arp.o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ${OBJECTDIR}/_ext/2027382860/ipv4.o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ${OBJECTDIR}/_ext/2027382860/dhcp.o ${OBJECTDIR}/_ext/2027382860/dns.o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ${OBJECTDIR}/_ext/2027382860/oahash.o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ${OBJECTDIR}/_ext/2027382860/udp.o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ${OBJECTDIR}/_ext/308860137/plib_evic.o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ${OBJECTDIR}/_ext/2135388491/sys_command.o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ${OBJECTDIR}/_ext/1702866625/sys_console.o ${OBJECTDIR}/_ext/57023747/sys_debug.o ${OBJECTDIR}/_ext/723085273/sys_int.o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ${OBJECTDIR}/_ext/1658225107/sys_time.o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/942849350/tasks.o ${OBJECTDIR}/_ext/942849350/initialization.o ${OBJECTDIR}/_ext/942849350/interrupts.o ${OBJECTDIR}/_ext/942849350/exceptions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/978308758/bsp.o.d ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d ${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d ${OBJECTDIR}/_ext/1761147401/drv_miim.o.d ${OBJECTDIR}/_ext/2027382860/helpers.o.d ${OBJECTDIR}/_ext/2027382860/icmp.o.d ${OBJECTDIR}/_ext/2027382860/arp.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d ${OBJECTDIR}/_ext/2027382860/ipv4.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/2027382860/dhcp.o.d ${OBJECTDIR}/_ext/2027382860/dns.o.d ${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d ${OBJECTDIR}/_ext/2027382860/oahash.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d ${OBJECTDIR}/_ext/2027382860/udp.o.d ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d ${OBJECTDIR}/_ext/308860137/plib_evic.o.d ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d ${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d ${OBJECTDIR}/_ext/309316908/plib_uart2.o.d ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d ${OBJECTDIR}/_ext/2135388491/sys_command.o.d ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d ${OBJECTDIR}/_ext/1702866625/sys_console.o.d ${OBJECTDIR}/_ext/57023747/sys_debug.o.d ${OBJECTDIR}/_ext/723085273/sys_int.o.d ${OBJECTDIR}/_ext/1175559516/sys_reset.o.d ${OBJECTDIR}/_ext/1658225107/sys_time.o.d ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/942849350/tasks.o.d ${OBJECTDIR}/_ext/942849350/initialization.o.d ${OBJECTDIR}/_ext/942849350/interrupts.o.d ${OBJECTDIR}/_ext/942849350/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/978308758/bsp.o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ${OBJECTDIR}/_ext/2027382860/helpers.o ${OBJECTDIR}/_ext/2027382860/icmp.o ${OBJECTDIR}/_ext/2027382860/arp.o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ${OBJECTDIR}/_ext/2027382860/ipv4.o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ${OBJECTDIR}/_ext/2027382860/dhcp.o ${OBJECTDIR}/_ext/2027382860/dns.o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ${OBJECTDIR}/_ext/2027382860/oahash.o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ${OBJECTDIR}/_ext/2027382860/udp.o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ${OBJECTDIR}/_ext/308860137/plib_evic.o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ${OBJECTDIR}/_ext/2135388491/sys_command.o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ${OBJECTDIR}/_ext/1702866625/sys_console.o ${OBJECTDIR}/_ext/57023747/sys_debug.o ${OBJECTDIR}/_ext/723085273/sys_int.o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ${OBJECTDIR}/_ext/1658225107/sys_time.o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/942849350/tasks.o ${OBJECTDIR}/_ext/942849350/initialization.o ${OBJECTDIR}/_ext/942849350/interrupts.o ${OBJECTDIR}/_ext/942849350/exceptions.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o

# Source Files
SOURCEFILES=../src/config/pic32mz_ef_sk/bsp/bsp.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c ../src/config/pic32mz_ef_sk/tasks.c ../src/config/pic32mz_ef_sk/initialization.c ../src/config/pic32mz_ef_sk/interrupts.c ../src/config/pic32mz_ef_sk/exceptions.c ../src/app.c ../src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk.mk ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFH144
MP_LINKER_FILE_OPTION=,--script="../src/config/pic32mz_ef_sk/p32MZ2048EFH144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk/88e5c6751da81e7b9315bdd39617c6b8ec9c10b7 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk/420c5f9d696f0b630ffeb1c9b48c0c533a8569ef .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/978308758/bsp.o: ../src/config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/5731d4b62056376e3bdedb2c834968d32f0d08cf .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/978308758" 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/978308758/bsp.o.d" -o ${OBJECTDIR}/_ext/978308758/bsp.o ../src/config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk/134f2d86bb7ef23c523c743d149d3c90a817f3ef .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk/bbca40b8ccb536c67bc7db74672561c7ab76f982 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/pic32mz_ef_sk/dc906e82cf2a8d69a8be7f18a533471e434ce4da .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_ethphy.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk/268b62db831c8b08c4509e2c1f93e49c70879eec .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk/436ef647901abec9073ce02e0dcc34be38e62542 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1761147401/drv_miim.o: ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_ef_sk/decbf6793d2e57365349796621b87691928e2927 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1761147401" 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1761147401/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c  .generated_files/flags/pic32mz_ef_sk/a445948c5202cc3e88c280b290aae5475fc07a7e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/icmp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c  .generated_files/flags/pic32mz_ef_sk/1c9fd27ad6aa077331706531b1b0766715e47721 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/icmp.o.d" -o ${OBJECTDIR}/_ext/2027382860/icmp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/arp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk/330a123bfc53fe50902d6acc0efe9a2e0a96989 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/arp.o.d" -o ${OBJECTDIR}/_ext/2027382860/arp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_commands.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c  .generated_files/flags/pic32mz_ef_sk/5a123008b3273f02b64fcc32a1300b0cb9561516 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/ipv4.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk/a9c006de636d613ae4af023b292d6b6e76baaac0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/ipv4.o.d" -o ${OBJECTDIR}/_ext/2027382860/ipv4.o ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk/111968fbedc1bd51aa83fa78df80ae36c9bb2b09 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk/1b7d76d1f72199ae651d56a7463935fa315ab024 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dhcp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk/1a379c441ede529f0473e606c17d3c368069703f .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dhcp.o.d" -o ${OBJECTDIR}/_ext/2027382860/dhcp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dns.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk/9078e255ff552bc478473d38fc89eddfedf892f8 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dns.o.d" -o ${OBJECTDIR}/_ext/2027382860/dns.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/hash_fnv.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk/3560bc41e6480427a4a3f08a01ae09bbeb76cd72 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/oahash.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk/59e8abd7663b0d6b86ba3ca77c9fc5ad0bce161a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/oahash.o.d" -o ${OBJECTDIR}/_ext/2027382860/oahash.o ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk/710c0383638536ca16fa03b40f258a9f603d178a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_manager.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk/d6b8664cae7c194a9c9da5f7b4f07d8eb714fbe .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_notify.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk/24e70a3ea7001aa1fd7b7eb4769fd9fd7e74dd75 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_packet.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk/d54a6a560bf0a51dc26c558ace295661ccd02da7 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/udp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk/e651fcf131288b41ec1cdc64ddb5bcdafc20ae09 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/udp.o.d" -o ${OBJECTDIR}/_ext/2027382860/udp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/a5ad524db129bf03f125265ff885503887c73a64 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1710852712/plib_coretimer.o: ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz_ef_sk/57ad1d4302cb38f1d5322775f1c0df391854b6cd .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1710852712" 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/719d18702a81ffa5ee414d514e3a7d6ee2697d5a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/4b206f440f7ad2db011806abb52a68f63d82d44d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098406777/plib_nvm.o: ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz_ef_sk/87ca6c78c2ab6debb9e884e0875808e98cb7b3bb .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098406777" 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart2.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz_ef_sk/7ecc203f7cdd2c39f31f032db815e2d6849a2aaf .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/870e29b1d63fa0747b232505b41b437a2624076 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/572f758fb74f04157dae45f30c81dae31d040b29 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2135388491/sys_command.o: ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk/6f3d1600a6862a2928c8df8322957a3737a38ab5 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2135388491" 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2135388491/sys_command.o.d" -o ${OBJECTDIR}/_ext/2135388491/sys_command.o ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console_uart.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/2ce19a7bb97949b3985b475054ffe19e0c7e09db .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/5a02d4b15f6bca0bb7cd1ad39436d1582f989604 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/57023747/sys_debug.o: ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/5a6b7dbe244c9d43092d919db227028e56f57804 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/57023747" 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/57023747/sys_debug.o.d" -o ${OBJECTDIR}/_ext/57023747/sys_debug.o ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/723085273/sys_int.o: ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c  .generated_files/flags/pic32mz_ef_sk/9244493002d96787acf2c266c12f9b124cf62780 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/723085273" 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/723085273/sys_int.o.d" -o ${OBJECTDIR}/_ext/723085273/sys_int.o ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1175559516/sys_reset.o: ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c  .generated_files/flags/pic32mz_ef_sk/32c5fe7fdf7fd0e6720d50d2072aadffb45cb0d5 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1175559516" 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1175559516/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1658225107/sys_time.o: ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c  .generated_files/flags/pic32mz_ef_sk/55bea32f12547ff38e3f12170697f07c8561224b .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1658225107" 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658225107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1658225107/sys_time.o ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o: ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c  .generated_files/flags/pic32mz_ef_sk/a9a8dd2e2a7f522387a5452f8c5e42dc061025bb .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1344301860" 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/tasks.o: ../src/config/pic32mz_ef_sk/tasks.c  .generated_files/flags/pic32mz_ef_sk/bc20044a0f3e3afd62035ccf703f495d8ef21cba .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/tasks.o.d" -o ${OBJECTDIR}/_ext/942849350/tasks.o ../src/config/pic32mz_ef_sk/tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/e71d710006ecd16cf8aa1a81a5d24536c357bd6e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/c50430be4200686b2b077e12297153a41b3bd116 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/b338369a9e1416330ceedd413d68831ca149210f .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/d9f2544166f35b62764d98a7a7e76213fc7f9850 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/3699659bb87c41b9ce0b6554122c052f2929b8e4 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/978308758/bsp.o: ../src/config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/2ff20c2952caa3fd8e21e6e968b3214019851b6 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/978308758" 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/978308758/bsp.o.d" -o ${OBJECTDIR}/_ext/978308758/bsp.o ../src/config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk/e11338466028c3cebd6094d916c7515ea8a18c6d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk/9f1dac1750f2a3faa88696581a544d1e8173d807 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/pic32mz_ef_sk/5f8f456a2ca46b169e3d08065a08a448df99f129 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_ethphy.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk/3dbc139d20d528aeac2c23d0edb6506604dc4e17 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk/271a0d803939329ca4e4505ad817b53eee6745af .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1761147401/drv_miim.o: ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_ef_sk/6a155afa5f1fe6b7c5c1812251fadab7ef4c453d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1761147401" 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1761147401/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c  .generated_files/flags/pic32mz_ef_sk/1a3a0a6f9b6564553dd84cb3bf0289c878b97d6e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/icmp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c  .generated_files/flags/pic32mz_ef_sk/913b523e404ebc016e302916a8e3232ccd653074 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/icmp.o.d" -o ${OBJECTDIR}/_ext/2027382860/icmp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/arp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk/ca332c3e4541921a49ecd1df1d43b65a5469018 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/arp.o.d" -o ${OBJECTDIR}/_ext/2027382860/arp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_commands.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c  .generated_files/flags/pic32mz_ef_sk/8538691711b2c935a62af171d93d9d2e5579e3 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/ipv4.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk/1b9251f8f8ec6e2307d2f7f7307886180dd4eb2a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/ipv4.o.d" -o ${OBJECTDIR}/_ext/2027382860/ipv4.o ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk/f33e03e1a0e3c3f344a1a2e6401f1016f68851d0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk/2b393669db7bc55d2cbd3daa1326fe31792e5332 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dhcp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk/c3923c33b473f4083139d73f6cc24027de1f8fcb .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dhcp.o.d" -o ${OBJECTDIR}/_ext/2027382860/dhcp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dns.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk/696ec6fe6cda31ae5325ff0f33275538723ed3e1 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dns.o.d" -o ${OBJECTDIR}/_ext/2027382860/dns.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/hash_fnv.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk/29b9fdd5c29056ebad10907547d7a64f919d45b8 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/oahash.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk/af92ab43d462e6bb5e8c001149ce82343a1542a4 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/oahash.o.d" -o ${OBJECTDIR}/_ext/2027382860/oahash.o ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk/4f0011ca5516c88e0df84dfa622b9445c0c74ddf .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_manager.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk/bb72faec29ac91505c0e21c588d72301dc2f7563 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_notify.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk/a0a6699f5a69476cc589f7bf7413fc5e95022119 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_packet.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk/4e9220d31056424def46fe3928481f0f4efdf04 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/udp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk/474b43c25d58deea967d4461230f0bd104ef1f4d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/udp.o.d" -o ${OBJECTDIR}/_ext/2027382860/udp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/3a428b078789e8082eae87d475e5e9aef61233d6 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1710852712/plib_coretimer.o: ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz_ef_sk/a21899c391d36dedb557ab99632d2d1a62dd403 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1710852712" 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/95737bc4f4565be6c37bf4196604d9bc234cf162 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/1ba74a0bd92181f37c7316b7b84a010f3ac07d05 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098406777/plib_nvm.o: ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz_ef_sk/9240bcc6fd2f55805f102594bd90e0ec10ccd748 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098406777" 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart2.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz_ef_sk/1b9a2ba9a0c34156dd1bb76289d76a33a9f07aee .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/e1f856df70dcb06b453278a782d375ff42156a07 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/8ea32a32f1fa7c5377666f0edfa7c66cdce05926 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2135388491/sys_command.o: ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk/34313c37f3bb85e3cfe6c420d1dc196e4c9a1d45 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2135388491" 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2135388491/sys_command.o.d" -o ${OBJECTDIR}/_ext/2135388491/sys_command.o ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console_uart.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/25479b4441265fdf2398a029f5b7aaeadc86b31e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/dc010cf5adcf9b565064dd3c567f871e1984f377 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/57023747/sys_debug.o: ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/b9f38d207d73652d1925275b776f9b7e23a42206 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/57023747" 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/57023747/sys_debug.o.d" -o ${OBJECTDIR}/_ext/57023747/sys_debug.o ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/723085273/sys_int.o: ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c  .generated_files/flags/pic32mz_ef_sk/ff98b66de2804bef495e45ccfe00e7c13e43b85d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/723085273" 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/723085273/sys_int.o.d" -o ${OBJECTDIR}/_ext/723085273/sys_int.o ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1175559516/sys_reset.o: ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c  .generated_files/flags/pic32mz_ef_sk/6d6b28ac3fd845475e2dc35e97740afb273e6d21 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1175559516" 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1175559516/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1658225107/sys_time.o: ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c  .generated_files/flags/pic32mz_ef_sk/c902df00294958ec8e48fe8b95c8692b67c64036 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1658225107" 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658225107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1658225107/sys_time.o ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o: ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c  .generated_files/flags/pic32mz_ef_sk/76adc35c56ce91c634928e65afe2ce34d5456514 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1344301860" 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/tasks.o: ../src/config/pic32mz_ef_sk/tasks.c  .generated_files/flags/pic32mz_ef_sk/15f396ba90ed4241b99ab9a8c509fa38b4a5d157 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/tasks.o.d" -o ${OBJECTDIR}/_ext/942849350/tasks.o ../src/config/pic32mz_ef_sk/tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/f51249a4c21013246b136ce7749b5cc47290e6da .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/28f5b5c8007ac014abb6ba0b540fe5cba71e67fc .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/f09dd375eb4b7b56c6990ad4c47e5ba7748f097c .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/bbdf8466984283b842d733987e3b0e7648147457 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/aa3ff9dc189fcb1d4504bcd0cca7024319d06fd3 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/pic32mz_ef_sk/p32MZ2048EFH144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=64960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	
else
${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/pic32mz_ef_sk/p32MZ2048EFH144.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=64960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml 
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/pic32mz_ef_sk.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
