################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/USB_Device_Library/usbd_cdc.o \
./Middlewares/USB_Device_Library/usbd_core.o \
./Middlewares/USB_Device_Library/usbd_ctlreq.o \
./Middlewares/USB_Device_Library/usbd_ioreq.o 

C_DEPS += \
./Middlewares/USB_Device_Library/usbd_cdc.d \
./Middlewares/USB_Device_Library/usbd_core.d \
./Middlewares/USB_Device_Library/usbd_ctlreq.d \
./Middlewares/USB_Device_Library/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Device_Library/usbd_cdc.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_core.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ctlreq.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Middlewares/USB_Device_Library/usbd_ioreq.o: /home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/blink3/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


