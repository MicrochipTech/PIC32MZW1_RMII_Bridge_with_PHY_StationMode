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
${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk/f360f2f50dda4644bbd56a88c4f1e2e141e23590 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2027382860/tcpip_helper_c32.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helper_c32.S  .generated_files/flags/pic32mz_ef_sk/9e8b702647da2a150916c45e248bec54d247aeb0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
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
${OBJECTDIR}/_ext/978308758/bsp.o: ../src/config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/f7556c6e6e373e828e2a1e9f7d1b4f5d09718299 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/978308758" 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/978308758/bsp.o.d" -o ${OBJECTDIR}/_ext/978308758/bsp.o ../src/config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk/7ce22a25fb54774961c23a0344eb21673d675275 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk/60e60012fcbb857f55a1da8de9bf91054582c315 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/pic32mz_ef_sk/923a7014348ce332be3ed7659dbd0f8c308d2c76 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_ethphy.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk/8e393a36549912484697b623464f8d9bb7b65dfb .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk/77246070cc7dbfc84ab2850b702b99b6fce6e5a0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1761147401/drv_miim.o: ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_ef_sk/91bb1d722d46436b8912492b5185d5556f1828b2 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1761147401" 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1761147401/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c  .generated_files/flags/pic32mz_ef_sk/54d989d04378d88979def813aa8a2e7f81855fed .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/icmp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c  .generated_files/flags/pic32mz_ef_sk/ee6d16a7f036dbf6ba5c92e41574285b9b4ff35f .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/icmp.o.d" -o ${OBJECTDIR}/_ext/2027382860/icmp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/arp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk/261baf17702235383c0509206619df38be90e31 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/arp.o.d" -o ${OBJECTDIR}/_ext/2027382860/arp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_commands.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c  .generated_files/flags/pic32mz_ef_sk/c19ac90b4b0dbb810e422d11906a2fa88ec5e0bb .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/ipv4.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk/89a90a67c52c14a77cd54dc91669537673e35229 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/ipv4.o.d" -o ${OBJECTDIR}/_ext/2027382860/ipv4.o ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk/bcec8cd9bd14e59242eb980ffb92924285187446 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk/fe7ba28e7a5d48800f43db72075b3c9f292df21a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dhcp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk/517085fb8f477757b0b4b2eeab61bf549e088280 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dhcp.o.d" -o ${OBJECTDIR}/_ext/2027382860/dhcp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dns.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk/1ced8405eadc80a24025644bade2ffd1da4c5fa1 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dns.o.d" -o ${OBJECTDIR}/_ext/2027382860/dns.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/hash_fnv.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk/7a75cf193f52ace4dcd913727e877fa65199f628 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/oahash.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk/263ba6cb5817b3bf0c13c7abe25813d17efcbc45 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/oahash.o.d" -o ${OBJECTDIR}/_ext/2027382860/oahash.o ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk/8911ecd618c553e28a9b4482bca893719a95a82f .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_manager.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk/8379d26f8d8f5cd67e96b293ff54aa9fd995f7ac .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_notify.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk/279fa164fd1c1bbe820d34dbe99e95b0c18db43a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_packet.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk/4c097a0bb855bba3c75675fd6ce1ddd91822f164 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/udp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk/b0f22e3f7cb21778c1c195b96c407f22fb777c5e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/udp.o.d" -o ${OBJECTDIR}/_ext/2027382860/udp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/fb4016e19495f987be76d0d1977d3983796d7684 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1710852712/plib_coretimer.o: ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz_ef_sk/9b03ab74223a89fd75d7441de858712986905860 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1710852712" 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/da50e0d808b69197fcb9539ebe58f40c0a77f8a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/960789f8b81d5da1f589014b263980bac7f55bfd .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098406777/plib_nvm.o: ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz_ef_sk/ecf39c1aa30ca4b054913b83c765c4d4ae82b230 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098406777" 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart2.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz_ef_sk/91d3560cec9f8dfbaefe689b084cd5c821b36661 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/d615a62a3f2c814e1460c55a9bdb4408a3607b3c .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/15daeaea0d3700d1e352bf0513d8663301bd15fc .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2135388491/sys_command.o: ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk/b571ac553624e5da732da1ccd72e47c15af2cf8e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2135388491" 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2135388491/sys_command.o.d" -o ${OBJECTDIR}/_ext/2135388491/sys_command.o ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console_uart.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/582da6e30d97fbbd04c5eaaebc09224dccf69881 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/c5405c7226c73177a6bf3aa9f65e4ac63ccf3b3b .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/57023747/sys_debug.o: ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/7b7833a621382dedab49ee2b5b1d6c0739520221 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/57023747" 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/57023747/sys_debug.o.d" -o ${OBJECTDIR}/_ext/57023747/sys_debug.o ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/723085273/sys_int.o: ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c  .generated_files/flags/pic32mz_ef_sk/1103245bc8e4af096932f8707f0856b0d5b85d6d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/723085273" 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/723085273/sys_int.o.d" -o ${OBJECTDIR}/_ext/723085273/sys_int.o ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1175559516/sys_reset.o: ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c  .generated_files/flags/pic32mz_ef_sk/5bd4ae48f24ce733c8bc9d27b42a6b3763ff5e4c .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1175559516" 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1175559516/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1658225107/sys_time.o: ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c  .generated_files/flags/pic32mz_ef_sk/934456b3417e5f631307076c2b111f82238325b0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1658225107" 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658225107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1658225107/sys_time.o ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o: ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c  .generated_files/flags/pic32mz_ef_sk/e38c1b6ba25078fc9a45991dad97c24cf6640745 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1344301860" 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/tasks.o: ../src/config/pic32mz_ef_sk/tasks.c  .generated_files/flags/pic32mz_ef_sk/1d88313e1e8de57a35780fdd9c52ee6ffb78d999 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/tasks.o.d" -o ${OBJECTDIR}/_ext/942849350/tasks.o ../src/config/pic32mz_ef_sk/tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/ddde06f25e5d974a553c638486171bd6e1b00773 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/37df4c7c04a5e7c04e2ab5ff28e1a8293d3cfd73 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/5ceab48a31f543f7583a6069ce01ca9967d56f83 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/fa69a0daa3057ec3cba26508cc6edab8f40ac013 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/c5ba4efabc63d703c6412ee41fdb77794f6f0d6b .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/978308758/bsp.o: ../src/config/pic32mz_ef_sk/bsp/bsp.c  .generated_files/flags/pic32mz_ef_sk/407a1b36b839db5b6275abef8cf912d4657ec033 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/978308758" 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/978308758/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/978308758/bsp.o.d" -o ${OBJECTDIR}/_ext/978308758/bsp.o ../src/config/pic32mz_ef_sk/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/flags/pic32mz_ef_sk/414cbd6d2dfeb20b8a96c7d6bd2716cebbb2a96e .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/flags/pic32mz_ef_sk/9a7946e414263100aa2a253378e414f84fb27110 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_ethmac_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o: ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/flags/pic32mz_ef_sk/cb2887e4585894a4b96020ebfd0bccc991480158 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1314174413" 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/1314174413/drv_eth_pic32_lib.o ../src/config/pic32mz_ef_sk/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_ethphy.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/flags/pic32mz_ef_sk/77e793ad93df9db5905d9aaed7f790bc5f3969da .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_ethphy.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o: ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c  .generated_files/flags/pic32mz_ef_sk/203362cb5382cbc66ace41dca227ca677be3e122 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/138020607" 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o.d" -o ${OBJECTDIR}/_ext/138020607/drv_extphy_smsc8740.o ../src/config/pic32mz_ef_sk/driver/ethphy/src/dynamic/drv_extphy_smsc8740.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1761147401/drv_miim.o: ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c  .generated_files/flags/pic32mz_ef_sk/e627258c042944bab0d921292c56702846f45635 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1761147401" 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1761147401/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1761147401/drv_miim.o.d" -o ${OBJECTDIR}/_ext/1761147401/drv_miim.o ../src/config/pic32mz_ef_sk/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c  .generated_files/flags/pic32mz_ef_sk/91892b85753c94da797d426e5cd6256793a587d7 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/icmp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c  .generated_files/flags/pic32mz_ef_sk/a37a473877b84333eca8423cf699f603bc28d1fc .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/icmp.o.d" -o ${OBJECTDIR}/_ext/2027382860/icmp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/icmp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/arp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c  .generated_files/flags/pic32mz_ef_sk/cdaa2d6afa83c983504ae75405531f62d6dc17b2 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/arp.o.d" -o ${OBJECTDIR}/_ext/2027382860/arp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/arp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_commands.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c  .generated_files/flags/pic32mz_ef_sk/48c4148ff1ee45bf69415130f8196b34eef57159 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_commands.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_commands.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/ipv4.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c  .generated_files/flags/pic32mz_ef_sk/e6b1d8b23554ba0410c970f371ed913b26d5ddbd .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/ipv4.o.d" -o ${OBJECTDIR}/_ext/2027382860/ipv4.o ../src/config/pic32mz_ef_sk/library/tcpip/src/ipv4.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/flags/pic32mz_ef_sk/f7a0bbe65dae821e08c5fd305bc728543d98e0f .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_alloc.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c  .generated_files/flags/pic32mz_ef_sk/89e30e2d79f74588399cd6b9f5797d4582a8e4ac .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_heap_internal.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dhcp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c  .generated_files/flags/pic32mz_ef_sk/f405e6e84cd1ffc62971c608426110432471afde .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dhcp.o.d" -o ${OBJECTDIR}/_ext/2027382860/dhcp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dhcp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/dns.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c  .generated_files/flags/pic32mz_ef_sk/9cd294087f76dc492dc6a5eb316e2500094642fe .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/dns.o.d" -o ${OBJECTDIR}/_ext/2027382860/dns.o ../src/config/pic32mz_ef_sk/library/tcpip/src/dns.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/hash_fnv.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c  .generated_files/flags/pic32mz_ef_sk/21a8ce7072c60e131414377aed227c7afcc44061 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/2027382860/hash_fnv.o ../src/config/pic32mz_ef_sk/library/tcpip/src/hash_fnv.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/oahash.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c  .generated_files/flags/pic32mz_ef_sk/58a817eddf89d396a8e83967268093c75dd05111 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/oahash.o.d" -o ${OBJECTDIR}/_ext/2027382860/oahash.o ../src/config/pic32mz_ef_sk/library/tcpip/src/oahash.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c  .generated_files/flags/pic32mz_ef_sk/c869a9a2eebe0cfaa220fc71b2a27cb6dac3a187 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_helpers.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_helpers.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_manager.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c  .generated_files/flags/pic32mz_ef_sk/11aa99d5e3cc12770ce9e0e4dfc0b99eda3521ba .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_manager.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_manager.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_notify.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c  .generated_files/flags/pic32mz_ef_sk/9cd2f3213559377cd086fdeecdf41af3ed8dcee3 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_notify.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_notify.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/tcpip_packet.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c  .generated_files/flags/pic32mz_ef_sk/7811f719d5c6b3bd63fa0d041d6a7fb65dfdf32d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/2027382860/tcpip_packet.o ../src/config/pic32mz_ef_sk/library/tcpip/src/tcpip_packet.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2027382860/udp.o: ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c  .generated_files/flags/pic32mz_ef_sk/ebac778b5409ede222643807cc93d4189aa990d0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2027382860" 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2027382860/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2027382860/udp.o.d" -o ${OBJECTDIR}/_ext/2027382860/udp.o ../src/config/pic32mz_ef_sk/library/tcpip/src/udp.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098417660/plib_clk.o: ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz_ef_sk/ac7a35c5b0f8f9834659ad57d7b9c04a405ad25c .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098417660" 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098417660/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098417660/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1098417660/plib_clk.o ../src/config/pic32mz_ef_sk/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1710852712/plib_coretimer.o: ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c  .generated_files/flags/pic32mz_ef_sk/5b0000ba4d0f4503c0709245d187ee45cabf6250 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1710852712" 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1710852712/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1710852712/plib_coretimer.o ../src/config/pic32mz_ef_sk/peripheral/coretimer/plib_coretimer.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308860137/plib_evic.o: ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz_ef_sk/9db4780741f70f5e4ba94c950816b0b39f3a6cad .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308860137" 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/308860137/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308860137/plib_evic.o.d" -o ${OBJECTDIR}/_ext/308860137/plib_evic.o ../src/config/pic32mz_ef_sk/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/308913965/plib_gpio.o: ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz_ef_sk/c19bfff716aa221513254b663b3b3cd601350a4a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/308913965" 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/308913965/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308913965/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/308913965/plib_gpio.o ../src/config/pic32mz_ef_sk/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1098406777/plib_nvm.o: ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz_ef_sk/ab7aae2bfbf9f68b4ec3ab938e33dc4ed2669c69 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1098406777" 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1098406777/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1098406777/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1098406777/plib_nvm.o ../src/config/pic32mz_ef_sk/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart2.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c  .generated_files/flags/pic32mz_ef_sk/fa6bb78b4304f30e80c0eabd36e319f483ac2f6 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart2.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart2.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart2.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/309316908/plib_uart1.o: ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mz_ef_sk/b73efd91a378dca781e2a8a4ecad717c5b42c393 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/309316908" 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/309316908/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/309316908/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/309316908/plib_uart1.o ../src/config/pic32mz_ef_sk/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/458842868/xc32_monitor.o: ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c  .generated_files/flags/pic32mz_ef_sk/aabe782c3ca50a927991e354fac582f63bb9302d .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/458842868" 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/458842868/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/458842868/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/458842868/xc32_monitor.o ../src/config/pic32mz_ef_sk/stdio/xc32_monitor.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2135388491/sys_command.o: ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c  .generated_files/flags/pic32mz_ef_sk/1f28f61526902693576d41e604150d01bc5e123b .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/2135388491" 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2135388491/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2135388491/sys_command.o.d" -o ${OBJECTDIR}/_ext/2135388491/sys_command.o ../src/config/pic32mz_ef_sk/system/command/src/sys_command.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console_uart.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c  .generated_files/flags/pic32mz_ef_sk/17c16ba0cc32af3177f3550f76187e555f4944fe .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console_uart.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console_uart.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1702866625/sys_console.o: ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c  .generated_files/flags/pic32mz_ef_sk/ed485501089cb8e5d62dacaff79903d8cf664676 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1702866625" 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1702866625/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1702866625/sys_console.o.d" -o ${OBJECTDIR}/_ext/1702866625/sys_console.o ../src/config/pic32mz_ef_sk/system/console/src/sys_console.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/57023747/sys_debug.o: ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c  .generated_files/flags/pic32mz_ef_sk/afc4de503f9dd8567de637ad4f61538dde7e1d00 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/57023747" 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/57023747/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/57023747/sys_debug.o.d" -o ${OBJECTDIR}/_ext/57023747/sys_debug.o ../src/config/pic32mz_ef_sk/system/debug/src/sys_debug.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/723085273/sys_int.o: ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c  .generated_files/flags/pic32mz_ef_sk/d988d3fcb9dff2c7ab712ff7c60ce8334df7d9ff .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/723085273" 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/723085273/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/723085273/sys_int.o.d" -o ${OBJECTDIR}/_ext/723085273/sys_int.o ../src/config/pic32mz_ef_sk/system/int/src/sys_int.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1175559516/sys_reset.o: ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c  .generated_files/flags/pic32mz_ef_sk/7d50cd562eeb6839355bdabee6804d55cac871a0 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1175559516" 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1175559516/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1175559516/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1175559516/sys_reset.o ../src/config/pic32mz_ef_sk/system/reset/sys_reset.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1658225107/sys_time.o: ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c  .generated_files/flags/pic32mz_ef_sk/a99ab4cb9bb305d64ebdf0b70b5a9ab1afe03a5a .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1658225107" 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658225107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658225107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1658225107/sys_time.o ../src/config/pic32mz_ef_sk/system/time/src/sys_time.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o: ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c  .generated_files/flags/pic32mz_ef_sk/90824c978627da7c52d0c3d23a2f252d6de0d5e3 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1344301860" 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/1344301860/sys_time_h2_adapter.o ../src/config/pic32mz_ef_sk/system/sys_time_h2_adapter.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/tasks.o: ../src/config/pic32mz_ef_sk/tasks.c  .generated_files/flags/pic32mz_ef_sk/395d2bccf6338da0fdd649f212e88c783d4b94bd .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/tasks.o.d" -o ${OBJECTDIR}/_ext/942849350/tasks.o ../src/config/pic32mz_ef_sk/tasks.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/initialization.o: ../src/config/pic32mz_ef_sk/initialization.c  .generated_files/flags/pic32mz_ef_sk/9110e5a10ce6ef247cb3daf0eace89b2d2ddca76 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/initialization.o.d" -o ${OBJECTDIR}/_ext/942849350/initialization.o ../src/config/pic32mz_ef_sk/initialization.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/interrupts.o: ../src/config/pic32mz_ef_sk/interrupts.c  .generated_files/flags/pic32mz_ef_sk/7cc4339651f016fd578c7a18e595e1de790a1b22 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/interrupts.o.d" -o ${OBJECTDIR}/_ext/942849350/interrupts.o ../src/config/pic32mz_ef_sk/interrupts.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/942849350/exceptions.o: ../src/config/pic32mz_ef_sk/exceptions.c  .generated_files/flags/pic32mz_ef_sk/712cf5bb9e11e48aefdd75e659e15620cad64767 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/942849350" 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/942849350/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/942849350/exceptions.o.d" -o ${OBJECTDIR}/_ext/942849350/exceptions.o ../src/config/pic32mz_ef_sk/exceptions.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mz_ef_sk/a4f200e5f6d7b6d0971d3ba2f97ad4dbb6b12c1 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz_ef_sk" -I"../src/config/pic32mz_ef_sk/library" -I"../src/config/pic32mz_ef_sk/library/tcpip/src" -I"../src/config/pic32mz_ef_sk/library/tcpip/src/common" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk=$(CND_CONF)    $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz_ef_sk/8f20fd58211ae9d64197b18e74b0584dad009d76 .generated_files/flags/pic32mz_ef_sk/63f1ef20678ffe8fc8fa469bda0281a2cb781918
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
