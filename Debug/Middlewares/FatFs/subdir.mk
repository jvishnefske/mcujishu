################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/diskio.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/ff.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/option/syscall.c 

OBJS += \
./Middlewares/FatFs/diskio.o \
./Middlewares/FatFs/ff.o \
./Middlewares/FatFs/ff_gen_drv.o \
./Middlewares/FatFs/syscall.o 

C_DEPS += \
./Middlewares/FatFs/diskio.d \
./Middlewares/FatFs/ff.d \
./Middlewares/FatFs/ff_gen_drv.d \
./Middlewares/FatFs/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/FatFs/diskio.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/diskio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FatFs/ff.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/ff.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FatFs/ff_gen_drv.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/FatFs/syscall.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src/option/syscall.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


