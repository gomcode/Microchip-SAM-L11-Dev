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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/main.c ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c ../../../Secure/firmware/src/config/default/initialization.c ../../../Secure/firmware/src/trustZone/nonsecure_entry.c ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c ../../../Secure/firmware/src/config/default/interrupts.c ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c ../../../Secure/firmware/src/config/default/libc_syscalls.c ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c ../../../Secure/firmware/src/config/default/exceptions.c ../../../Secure/firmware/src/config/default/startup_xc32.c ../src/EXT_Peripherals/BMA400/bma400.c ../src/EXT_Peripherals/BMA400/bma400_library.c ../src/EXT_Peripherals/ColorLCD/fonts.c ../src/EXT_Peripherals/ColorLCD/lcd.c ../src/EXT_Peripherals/ColorLCD/lcd_logo.c ../src/EXT_Peripherals/ECG/ecg.c ../src/EXT_Peripherals/MAX30101/max30101.c ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c ../src/EXT_Peripherals/TMP006/tmp006.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1757882816/plib_clock.o ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o ${OBJECTDIR}/_ext/1303969008/plib_nvic.o ${OBJECTDIR}/_ext/1981734265/plib_wdt.o ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o ${OBJECTDIR}/_ext/1664136042/initialization.o ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o ${OBJECTDIR}/_ext/1760032302/plib_evsys.o ${OBJECTDIR}/_ext/1044451957/plib_pm.o ${OBJECTDIR}/_ext/1664136042/interrupts.o ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o ${OBJECTDIR}/_ext/1981717105/plib_eic.o ${OBJECTDIR}/_ext/1200190692/plib_systick.o ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o ${OBJECTDIR}/_ext/1304022159/plib_port.o ${OBJECTDIR}/_ext/1664136042/exceptions.o ${OBJECTDIR}/_ext/1664136042/startup_xc32.o ${OBJECTDIR}/_ext/1970411534/bma400.o ${OBJECTDIR}/_ext/1970411534/bma400_library.o ${OBJECTDIR}/_ext/1669359750/fonts.o ${OBJECTDIR}/_ext/1669359750/lcd.o ${OBJECTDIR}/_ext/1669359750/lcd_logo.o ${OBJECTDIR}/_ext/1509246599/ecg.o ${OBJECTDIR}/_ext/73391009/max30101.o ${OBJECTDIR}/_ext/874922811/mikroe2554.o ${OBJECTDIR}/_ext/1808788017/tmp006.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1757882816/plib_clock.o.d ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o.d ${OBJECTDIR}/_ext/1303969008/plib_nvic.o.d ${OBJECTDIR}/_ext/1981734265/plib_wdt.o.d ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o.d ${OBJECTDIR}/_ext/1664136042/initialization.o.d ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o.d ${OBJECTDIR}/_ext/1760032302/plib_evsys.o.d ${OBJECTDIR}/_ext/1044451957/plib_pm.o.d ${OBJECTDIR}/_ext/1664136042/interrupts.o.d ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1981717105/plib_eic.o.d ${OBJECTDIR}/_ext/1200190692/plib_systick.o.d ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o.d ${OBJECTDIR}/_ext/1304022159/plib_port.o.d ${OBJECTDIR}/_ext/1664136042/exceptions.o.d ${OBJECTDIR}/_ext/1664136042/startup_xc32.o.d ${OBJECTDIR}/_ext/1970411534/bma400.o.d ${OBJECTDIR}/_ext/1970411534/bma400_library.o.d ${OBJECTDIR}/_ext/1669359750/fonts.o.d ${OBJECTDIR}/_ext/1669359750/lcd.o.d ${OBJECTDIR}/_ext/1669359750/lcd_logo.o.d ${OBJECTDIR}/_ext/1509246599/ecg.o.d ${OBJECTDIR}/_ext/73391009/max30101.o.d ${OBJECTDIR}/_ext/874922811/mikroe2554.o.d ${OBJECTDIR}/_ext/1808788017/tmp006.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1757882816/plib_clock.o ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o ${OBJECTDIR}/_ext/1303969008/plib_nvic.o ${OBJECTDIR}/_ext/1981734265/plib_wdt.o ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o ${OBJECTDIR}/_ext/1664136042/initialization.o ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o ${OBJECTDIR}/_ext/1760032302/plib_evsys.o ${OBJECTDIR}/_ext/1044451957/plib_pm.o ${OBJECTDIR}/_ext/1664136042/interrupts.o ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o ${OBJECTDIR}/_ext/1981717105/plib_eic.o ${OBJECTDIR}/_ext/1200190692/plib_systick.o ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o ${OBJECTDIR}/_ext/1304022159/plib_port.o ${OBJECTDIR}/_ext/1664136042/exceptions.o ${OBJECTDIR}/_ext/1664136042/startup_xc32.o ${OBJECTDIR}/_ext/1970411534/bma400.o ${OBJECTDIR}/_ext/1970411534/bma400_library.o ${OBJECTDIR}/_ext/1669359750/fonts.o ${OBJECTDIR}/_ext/1669359750/lcd.o ${OBJECTDIR}/_ext/1669359750/lcd_logo.o ${OBJECTDIR}/_ext/1509246599/ecg.o ${OBJECTDIR}/_ext/73391009/max30101.o ${OBJECTDIR}/_ext/874922811/mikroe2554.o ${OBJECTDIR}/_ext/1808788017/tmp006.o

# Source Files
SOURCEFILES=../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/systick/plib_systick.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/initialization.c ../src/main.c ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c ../../../Secure/firmware/src/config/default/initialization.c ../../../Secure/firmware/src/trustZone/nonsecure_entry.c ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c ../../../Secure/firmware/src/config/default/interrupts.c ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c ../../../Secure/firmware/src/config/default/libc_syscalls.c ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c ../../../Secure/firmware/src/config/default/exceptions.c ../../../Secure/firmware/src/config/default/startup_xc32.c ../src/EXT_Peripherals/BMA400/bma400.c ../src/EXT_Peripherals/BMA400/bma400_library.c ../src/EXT_Peripherals/ColorLCD/fonts.c ../src/EXT_Peripherals/ColorLCD/lcd.c ../src/EXT_Peripherals/ColorLCD/lcd_logo.c ../src/EXT_Peripherals/ECG/ecg.c ../src/EXT_Peripherals/MAX30101/max30101.c ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c ../src/EXT_Peripherals/TMP006/tmp006.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAML11E16A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAML11E16A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/4ec5125f4d8203534bf5367240b3e689be43980a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/8b93b5fc3f44d3fa61d12a3533c3a2e9c5975f66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/4034df78b66449e018292022c9567bea84cb94b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/c2e976d8ed8558758c22437840d780da56f8d6c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/ec63f194d3e5c50260503b82408af8b7196ec7dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/40851c0b92e4dfbdd3d4deb75911d4681bc8e4d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/6cfb4dd7fe943387645bcfedf1c116cdfb20b61d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/7fae8609c8d1bbc290f750420fde06e05c24a013 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/b11f0b9771fb533d77e6c2158a502cdf6d453ddc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/83ddb1a10b9f65d04eb4db2c9ee461d565ebd4c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1757882816/plib_clock.o: ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/bc43c2b187141f8db62c74f5a3b10d7cab8d43e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1757882816" 
	@${RM} ${OBJECTDIR}/_ext/1757882816/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1757882816/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1757882816/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1757882816/plib_clock.o ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2024902564/xc32_monitor.o: ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/a31819755b16f803c8a7114e8e73e87f77f51a2c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2024902564" 
	@${RM} ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2024902564/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1303969008/plib_nvic.o: ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/26e57b8a7f21a0cea7f430b5f3c6a55e7b3178c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1303969008" 
	@${RM} ${OBJECTDIR}/_ext/1303969008/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303969008/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1303969008/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1303969008/plib_nvic.o ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1981734265/plib_wdt.o: ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c  .generated_files/flags/default/88256b31d1bc4265d32efb35730c2156eb67eef7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1981734265" 
	@${RM} ${OBJECTDIR}/_ext/1981734265/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1981734265/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1981734265/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1981734265/plib_wdt.o ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o: ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c  .generated_files/flags/default/76285c5577914f9872e9e034e7c2a134547a31ee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1292141063" 
	@${RM} ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/initialization.o: ../../../Secure/firmware/src/config/default/initialization.c  .generated_files/flags/default/d3cf0690f9e6c83b3fd84b8bb3e5af973d20a165 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/initialization.o.d" -o ${OBJECTDIR}/_ext/1664136042/initialization.o ../../../Secure/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829068946/nonsecure_entry.o: ../../../Secure/firmware/src/trustZone/nonsecure_entry.c  .generated_files/flags/default/90eb6e403ca1d6d7df9e6cfe099eb828f2b6edaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829068946" 
	@${RM} ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o.d 
	@${RM} ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829068946/nonsecure_entry.o.d" -o ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o ../../../Secure/firmware/src/trustZone/nonsecure_entry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1760032302/plib_evsys.o: ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/71d38bfd6a3e3d949e9d32e8c3b136daabe8924 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1760032302" 
	@${RM} ${OBJECTDIR}/_ext/1760032302/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1760032302/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1760032302/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1760032302/plib_evsys.o ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1044451957/plib_pm.o: ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/a2cb376e0bcf29f51b0f5319cb3517f48b1b50e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1044451957" 
	@${RM} ${OBJECTDIR}/_ext/1044451957/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044451957/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044451957/plib_pm.o.d" -o ${OBJECTDIR}/_ext/1044451957/plib_pm.o ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/interrupts.o: ../../../Secure/firmware/src/config/default/interrupts.c  .generated_files/flags/default/95f0428199957a1a0986b0e8c158052a1d06135f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/interrupts.o.d" -o ${OBJECTDIR}/_ext/1664136042/interrupts.o ../../../Secure/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o: ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/6eb28418dff41946d49ff7e7acf59a915e02f9f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434665790" 
	@${RM} ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1981717105/plib_eic.o: ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/a132d27f9c757208bca6912d70b5c2e49b8e9229 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1981717105" 
	@${RM} ${OBJECTDIR}/_ext/1981717105/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1981717105/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1981717105/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1981717105/plib_eic.o ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200190692/plib_systick.o: ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/cd38320cd46d055f9251e06ba5d794bf64bb1d9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200190692" 
	@${RM} ${OBJECTDIR}/_ext/1200190692/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200190692/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200190692/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1200190692/plib_systick.o ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/libc_syscalls.o: ../../../Secure/firmware/src/config/default/libc_syscalls.c  .generated_files/flags/default/6a196e6d3adf71224eb2adad2ab40ce588a5d9b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o ../../../Secure/firmware/src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1304022159/plib_port.o: ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/9f79b79787bdee5ede55c193e679e92d96aefe24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1304022159" 
	@${RM} ${OBJECTDIR}/_ext/1304022159/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1304022159/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1304022159/plib_port.o.d" -o ${OBJECTDIR}/_ext/1304022159/plib_port.o ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/exceptions.o: ../../../Secure/firmware/src/config/default/exceptions.c  .generated_files/flags/default/b76721c05296e960551f5a5187c1b0c5f91bc628 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/exceptions.o.d" -o ${OBJECTDIR}/_ext/1664136042/exceptions.o ../../../Secure/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/startup_xc32.o: ../../../Secure/firmware/src/config/default/startup_xc32.c  .generated_files/flags/default/e2bc256646e29b6e31fc288afc6160e2a43bb672 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1664136042/startup_xc32.o ../../../Secure/firmware/src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1970411534/bma400.o: ../src/EXT_Peripherals/BMA400/bma400.c  .generated_files/flags/default/245484300b25229afc0c7335cad2fc3a1cc488cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1970411534" 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1970411534/bma400.o.d" -o ${OBJECTDIR}/_ext/1970411534/bma400.o ../src/EXT_Peripherals/BMA400/bma400.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1970411534/bma400_library.o: ../src/EXT_Peripherals/BMA400/bma400_library.c  .generated_files/flags/default/4643c567888c8da35c79ce173af70bbf7c601a89 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1970411534" 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1970411534/bma400_library.o.d" -o ${OBJECTDIR}/_ext/1970411534/bma400_library.o ../src/EXT_Peripherals/BMA400/bma400_library.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/fonts.o: ../src/EXT_Peripherals/ColorLCD/fonts.c  .generated_files/flags/default/4d89350aa8bf4802bd627af947d506629dd44543 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/fonts.o.d" -o ${OBJECTDIR}/_ext/1669359750/fonts.o ../src/EXT_Peripherals/ColorLCD/fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/lcd.o: ../src/EXT_Peripherals/ColorLCD/lcd.c  .generated_files/flags/default/34f8f1df5d94e3820864d4298dd9ab5eff6cc9dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/lcd.o.d" -o ${OBJECTDIR}/_ext/1669359750/lcd.o ../src/EXT_Peripherals/ColorLCD/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/lcd_logo.o: ../src/EXT_Peripherals/ColorLCD/lcd_logo.c  .generated_files/flags/default/47e39096bfaa1a35cb6cba83e3713f5a8994e3a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd_logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd_logo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/lcd_logo.o.d" -o ${OBJECTDIR}/_ext/1669359750/lcd_logo.o ../src/EXT_Peripherals/ColorLCD/lcd_logo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1509246599/ecg.o: ../src/EXT_Peripherals/ECG/ecg.c  .generated_files/flags/default/91bbcd12d6cf116ce5fa553fc0f6d46aa51a2216 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1509246599" 
	@${RM} ${OBJECTDIR}/_ext/1509246599/ecg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509246599/ecg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1509246599/ecg.o.d" -o ${OBJECTDIR}/_ext/1509246599/ecg.o ../src/EXT_Peripherals/ECG/ecg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/73391009/max30101.o: ../src/EXT_Peripherals/MAX30101/max30101.c  .generated_files/flags/default/d68723f5570e3eb8ead116f8d94b30c94393415 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/73391009" 
	@${RM} ${OBJECTDIR}/_ext/73391009/max30101.o.d 
	@${RM} ${OBJECTDIR}/_ext/73391009/max30101.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/73391009/max30101.o.d" -o ${OBJECTDIR}/_ext/73391009/max30101.o ../src/EXT_Peripherals/MAX30101/max30101.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/874922811/mikroe2554.o: ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c  .generated_files/flags/default/e61e226f262d9a73e15ecd7b7e4ce3867d513dd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/874922811" 
	@${RM} ${OBJECTDIR}/_ext/874922811/mikroe2554.o.d 
	@${RM} ${OBJECTDIR}/_ext/874922811/mikroe2554.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/874922811/mikroe2554.o.d" -o ${OBJECTDIR}/_ext/874922811/mikroe2554.o ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1808788017/tmp006.o: ../src/EXT_Peripherals/TMP006/tmp006.c  .generated_files/flags/default/2cce4c136536eb7562008ff6427c8c477249c421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1808788017" 
	@${RM} ${OBJECTDIR}/_ext/1808788017/tmp006.o.d 
	@${RM} ${OBJECTDIR}/_ext/1808788017/tmp006.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1808788017/tmp006.o.d" -o ${OBJECTDIR}/_ext/1808788017/tmp006.o ../src/EXT_Peripherals/TMP006/tmp006.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/dfca56114e3f7e982cfaffda977c475ab46ce89c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/8c248894529ef3ab0d2c08a0c829931af2e10afd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1827571544/plib_systick.o: ../src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/acb46cba0b264b056c3c573bcef341d9c46394d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1827571544" 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1827571544/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1827571544/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1827571544/plib_systick.o ../src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/df207e4d9505870d04d0b2b9fdb747e3cd97ff72 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/ae7489cb153c94a2edc31295c1f8204b3883b7ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/89fdf2ac391c90e9a3a4a6e37d717513eb4f4cc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/a4a53c5b70ecc64986e679d14de80d97a59b17c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/ed6703256dfef4379948a4bec867c3faf41a3420 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/da002579720c4b1369edb3fd27e050e0f063b9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/c9c9840202cc33af9a31512a1f93458048e50fde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1757882816/plib_clock.o: ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/ac3fa94108d6d17cf890af32cc2bf33f767383ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1757882816" 
	@${RM} ${OBJECTDIR}/_ext/1757882816/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1757882816/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1757882816/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1757882816/plib_clock.o ../../../Secure/firmware/src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2024902564/xc32_monitor.o: ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/832a30a8f6962a6f13701836812b04f2e7661662 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2024902564" 
	@${RM} ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2024902564/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/2024902564/xc32_monitor.o ../../../Secure/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1303969008/plib_nvic.o: ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/23555a86a2f0f36462dd17892bd36baa00387f5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1303969008" 
	@${RM} ${OBJECTDIR}/_ext/1303969008/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1303969008/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1303969008/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1303969008/plib_nvic.o ../../../Secure/firmware/src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1981734265/plib_wdt.o: ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c  .generated_files/flags/default/93aaaed8d08984cf3654437c0eca86d47b99c26c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1981734265" 
	@${RM} ${OBJECTDIR}/_ext/1981734265/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1981734265/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1981734265/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1981734265/plib_wdt.o ../../../Secure/firmware/src/config/default/peripheral/wdt/plib_wdt.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o: ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c  .generated_files/flags/default/241cdf05249e3911065fdaa96f5f172776fb8bbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1292141063" 
	@${RM} ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o.d" -o ${OBJECTDIR}/_ext/1292141063/plib_sercom0_i2c_master.o ../../../Secure/firmware/src/config/default/peripheral/sercom/i2c_master/plib_sercom0_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/initialization.o: ../../../Secure/firmware/src/config/default/initialization.c  .generated_files/flags/default/8ba4bbb51d900614c7e311aede0b8680b850cd30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/initialization.o.d" -o ${OBJECTDIR}/_ext/1664136042/initialization.o ../../../Secure/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/829068946/nonsecure_entry.o: ../../../Secure/firmware/src/trustZone/nonsecure_entry.c  .generated_files/flags/default/e8ed57321b69b96b55a56a3d3d48de98d6d83377 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/829068946" 
	@${RM} ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o.d 
	@${RM} ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/829068946/nonsecure_entry.o.d" -o ${OBJECTDIR}/_ext/829068946/nonsecure_entry.o ../../../Secure/firmware/src/trustZone/nonsecure_entry.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1760032302/plib_evsys.o: ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/5a3f829a1643d782bfaf64b967e856e161221fd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1760032302" 
	@${RM} ${OBJECTDIR}/_ext/1760032302/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1760032302/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1760032302/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1760032302/plib_evsys.o ../../../Secure/firmware/src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1044451957/plib_pm.o: ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c  .generated_files/flags/default/86986098e23cf5406b829fb513bd2c56f820491b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1044451957" 
	@${RM} ${OBJECTDIR}/_ext/1044451957/plib_pm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1044451957/plib_pm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1044451957/plib_pm.o.d" -o ${OBJECTDIR}/_ext/1044451957/plib_pm.o ../../../Secure/firmware/src/config/default/peripheral/pm/plib_pm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/interrupts.o: ../../../Secure/firmware/src/config/default/interrupts.c  .generated_files/flags/default/c8775e87653ab03fa03ea9fa10b1fa437dfab15a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/interrupts.o.d" -o ${OBJECTDIR}/_ext/1664136042/interrupts.o ../../../Secure/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o: ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/b98e493a36948014faf00871fa15557591bdf5d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1434665790" 
	@${RM} ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1434665790/plib_nvmctrl.o ../../../Secure/firmware/src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1981717105/plib_eic.o: ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c  .generated_files/flags/default/1d437d6c839ee63a2003cbf74f0f31d21118a4ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1981717105" 
	@${RM} ${OBJECTDIR}/_ext/1981717105/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1981717105/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1981717105/plib_eic.o.d" -o ${OBJECTDIR}/_ext/1981717105/plib_eic.o ../../../Secure/firmware/src/config/default/peripheral/eic/plib_eic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1200190692/plib_systick.o: ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c  .generated_files/flags/default/c69ad32a42d3aac5e0fe01c9caad91d49e55aed3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1200190692" 
	@${RM} ${OBJECTDIR}/_ext/1200190692/plib_systick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1200190692/plib_systick.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1200190692/plib_systick.o.d" -o ${OBJECTDIR}/_ext/1200190692/plib_systick.o ../../../Secure/firmware/src/config/default/peripheral/systick/plib_systick.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/libc_syscalls.o: ../../../Secure/firmware/src/config/default/libc_syscalls.c  .generated_files/flags/default/beaf90a5044d24285b0ff1ad2f918b51237cce95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1664136042/libc_syscalls.o ../../../Secure/firmware/src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1304022159/plib_port.o: ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/c999394e73a2c8ee271a71e8f94f47c565c6b019 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1304022159" 
	@${RM} ${OBJECTDIR}/_ext/1304022159/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1304022159/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1304022159/plib_port.o.d" -o ${OBJECTDIR}/_ext/1304022159/plib_port.o ../../../Secure/firmware/src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/exceptions.o: ../../../Secure/firmware/src/config/default/exceptions.c  .generated_files/flags/default/3fa5aab5e4d2ab4334d2f34b23e262b14e55bf23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/exceptions.o.d" -o ${OBJECTDIR}/_ext/1664136042/exceptions.o ../../../Secure/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1664136042/startup_xc32.o: ../../../Secure/firmware/src/config/default/startup_xc32.c  .generated_files/flags/default/64c422ac9f87977a4092064f1b5efc55589f7262 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1664136042" 
	@${RM} ${OBJECTDIR}/_ext/1664136042/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664136042/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664136042/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1664136042/startup_xc32.o ../../../Secure/firmware/src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1970411534/bma400.o: ../src/EXT_Peripherals/BMA400/bma400.c  .generated_files/flags/default/4a3e4d66770f4c83e21085382c461c434c1c9c0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1970411534" 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1970411534/bma400.o.d" -o ${OBJECTDIR}/_ext/1970411534/bma400.o ../src/EXT_Peripherals/BMA400/bma400.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1970411534/bma400_library.o: ../src/EXT_Peripherals/BMA400/bma400_library.c  .generated_files/flags/default/6a9564f56c98ff23ad5fd78f807ea7b9403ecb12 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1970411534" 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400_library.o.d 
	@${RM} ${OBJECTDIR}/_ext/1970411534/bma400_library.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1970411534/bma400_library.o.d" -o ${OBJECTDIR}/_ext/1970411534/bma400_library.o ../src/EXT_Peripherals/BMA400/bma400_library.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/fonts.o: ../src/EXT_Peripherals/ColorLCD/fonts.c  .generated_files/flags/default/88d1160567b38420265848005c1a91ae7c9bd9ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/fonts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/fonts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/fonts.o.d" -o ${OBJECTDIR}/_ext/1669359750/fonts.o ../src/EXT_Peripherals/ColorLCD/fonts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/lcd.o: ../src/EXT_Peripherals/ColorLCD/lcd.c  .generated_files/flags/default/739e2602402bcb7cf997348c4cb52a8085d528b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/lcd.o.d" -o ${OBJECTDIR}/_ext/1669359750/lcd.o ../src/EXT_Peripherals/ColorLCD/lcd.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1669359750/lcd_logo.o: ../src/EXT_Peripherals/ColorLCD/lcd_logo.c  .generated_files/flags/default/12fe9c1f1813a2939447d2c91a654936546e4b7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1669359750" 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd_logo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1669359750/lcd_logo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1669359750/lcd_logo.o.d" -o ${OBJECTDIR}/_ext/1669359750/lcd_logo.o ../src/EXT_Peripherals/ColorLCD/lcd_logo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1509246599/ecg.o: ../src/EXT_Peripherals/ECG/ecg.c  .generated_files/flags/default/60cf2a1f1efaa0132cbe1a44ed9dbe13d94fa22f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1509246599" 
	@${RM} ${OBJECTDIR}/_ext/1509246599/ecg.o.d 
	@${RM} ${OBJECTDIR}/_ext/1509246599/ecg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1509246599/ecg.o.d" -o ${OBJECTDIR}/_ext/1509246599/ecg.o ../src/EXT_Peripherals/ECG/ecg.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/73391009/max30101.o: ../src/EXT_Peripherals/MAX30101/max30101.c  .generated_files/flags/default/62ebf0decd96aeb1a349b59dea7a0c94a80742a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/73391009" 
	@${RM} ${OBJECTDIR}/_ext/73391009/max30101.o.d 
	@${RM} ${OBJECTDIR}/_ext/73391009/max30101.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/73391009/max30101.o.d" -o ${OBJECTDIR}/_ext/73391009/max30101.o ../src/EXT_Peripherals/MAX30101/max30101.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/874922811/mikroe2554.o: ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c  .generated_files/flags/default/fda16a849dd1070afda9521bb1d521cd6ae421fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/874922811" 
	@${RM} ${OBJECTDIR}/_ext/874922811/mikroe2554.o.d 
	@${RM} ${OBJECTDIR}/_ext/874922811/mikroe2554.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/874922811/mikroe2554.o.d" -o ${OBJECTDIR}/_ext/874922811/mikroe2554.o ../src/EXT_Peripherals/MIKORE2554/mikroe2554.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1808788017/tmp006.o: ../src/EXT_Peripherals/TMP006/tmp006.c  .generated_files/flags/default/cb710c40d5b871ce27720db17d2ea4bb67b37d1b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1808788017" 
	@${RM} ${OBJECTDIR}/_ext/1808788017/tmp006.o.d 
	@${RM} ${OBJECTDIR}/_ext/1808788017/tmp006.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/default" -I"../src/packs/ATSAML11E16A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1808788017/tmp006.o.d" -o ${OBJECTDIR}/_ext/1808788017/tmp006.o ../src/EXT_Peripherals/TMP006/tmp006.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mcmse -mdfp="${DFP_DIR}" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAML11E16A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-L"./",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DANSC_SIZE=0x200,-DAS_SIZE=0x8000,-DBNSC_SIZE=0x0,-DBOOTPROT_SIZE=0x0,-DBS_SIZE=0x0,-DNONSECURE,-DRS_SIZE=0x2000,-DSECURE,--memorysummary,${DISTDIR}/memoryfile.xml,,--cmse-implib,--out-implib=../../../NonSecure/firmware/SAM-L11-Dev_NonSecure.X/SAM-L11-Dev_Secure_sg_veneer.lib,-l:SAM-L11-Dev_Secure_sg_veneer.lib -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAML11E16A.ld ../../../Secure/firmware/SAM-L11-Dev_Secure.X/dist/default/production/SAM-L11-Dev_Secure.X.production.hex
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-L"./",-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-DANSC_SIZE=0x200,-DAS_SIZE=0x8000,-DBNSC_SIZE=0x0,-DBOOTPROT_SIZE=0x0,-DBS_SIZE=0x0,-DNONSECURE,-DRS_SIZE=0x2000,-DSECURE,--memorysummary,${DISTDIR}/memoryfile.xml,,--cmse-implib,--out-implib=../../../NonSecure/firmware/SAM-L11-Dev_NonSecure.X/SAM-L11-Dev_Secure_sg_veneer.lib,-l:SAM-L11-Dev_Secure_sg_veneer.lib -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
	@echo "Creating unified hex file"
	@"C:/Program Files/Microchip/MPLABX/v6.05/mplab_platform/platform/../mplab_ide/modules/../../bin/hexmate" --edf="C:/Program Files/Microchip/MPLABX/v6.05/mplab_platform/platform/../mplab_ide/modules/../../dat/en_msgs.txt" ${DISTDIR}/SAM-L11-Dev_NonSecure.X.${IMAGE_TYPE}.hex ../../../Secure/firmware/SAM-L11-Dev_Secure.X/dist/default/production/SAM-L11-Dev_Secure.X.production.hex -odist/${CND_CONF}/production/SAM-L11-Dev_NonSecure.X.production.unified.hex

endif


# Subprojects
.build-subprojects:
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
	cd ../../../Secure/firmware/SAM-L11-Dev_Secure.X && ${MAKE}  -f Makefile CONF=default TYPE_IMAGE=DEBUG_RUN
else
	cd ../../../Secure/firmware/SAM-L11-Dev_Secure.X && ${MAKE}  -f Makefile CONF=default
endif


# Subprojects
.clean-subprojects:
	cd ../../../Secure/firmware/SAM-L11-Dev_Secure.X && rm -rf "build/default" "dist/default"

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
