################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/adc.c \
../Src/cJSON.c \
../Src/commands.c \
../Src/freertos.c \
../Src/gpio.c \
../Src/iwdg.c \
../Src/jdvlcd.c \
../Src/main.c \
../Src/spi.c \
../Src/stm32f1xx_hal_msp.c \
../Src/stm32f1xx_hal_timebase_TIM.c \
../Src/stm32f1xx_it.c \
../Src/system_stm32f1xx.c \
../Src/usart.c \
../Src/usb_device.c \
../Src/usb_fifo.c \
../Src/usbd_cdc_if.c \
../Src/usbd_conf.c \
../Src/usbd_desc.c 

OBJS += \
./Src/adc.o \
./Src/cJSON.o \
./Src/commands.o \
./Src/freertos.o \
./Src/gpio.o \
./Src/iwdg.o \
./Src/jdvlcd.o \
./Src/main.o \
./Src/spi.o \
./Src/stm32f1xx_hal_msp.o \
./Src/stm32f1xx_hal_timebase_TIM.o \
./Src/stm32f1xx_it.o \
./Src/system_stm32f1xx.o \
./Src/usart.o \
./Src/usb_device.o \
./Src/usb_fifo.o \
./Src/usbd_cdc_if.o \
./Src/usbd_conf.o \
./Src/usbd_desc.o 

C_DEPS += \
./Src/adc.d \
./Src/cJSON.d \
./Src/commands.d \
./Src/freertos.d \
./Src/gpio.d \
./Src/iwdg.d \
./Src/jdvlcd.d \
./Src/main.d \
./Src/spi.d \
./Src/stm32f1xx_hal_msp.d \
./Src/stm32f1xx_hal_timebase_TIM.d \
./Src/stm32f1xx_it.d \
./Src/system_stm32f1xx.d \
./Src/usart.d \
./Src/usb_device.d \
./Src/usb_fifo.d \
./Src/usbd_cdc_if.d \
./Src/usbd_conf.d \
./Src/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/mcujishu/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include  -Og -g3 -Wall -Werror -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/main.o: ../Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft -std=c11 '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/j/src/stm32/mcujishu/Inc" -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM3 -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Device/ST/STM32F1xx/Include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FatFs/src -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/include -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I/home/j/STM32Cube/Repository/STM32Cube_FW_F1_V1.6.1/Drivers/CMSIS/Include  -Og -g3 -pedantic-errors -Wall -Werror -Wconversion -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


