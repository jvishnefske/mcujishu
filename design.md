# Design Document - mcujishu

## Overview

Embedded firmware for STM32F103RB microcontroller driving an ILI9320 LCD display with multi-interface communication support.

## MVP Functional Requirements

### Hardware Initialization
- [ ] FR-001: Initialize STM32F103RB system clock to 72MHz via PLL
- [ ] FR-002: Configure GPIO pins for LCD parallel interface (16-bit data bus)
- [ ] FR-003: Initialize SPI1 peripheral for external device communication
- [ ] FR-004: Initialize USART1 at 9600 baud for serial communication
- [ ] FR-005: Initialize USB CDC interface for virtual COM port
- [ ] FR-006: Configure IWDG watchdog timer for system fault recovery
- [ ] FR-007: Initialize ADC1 for internal temperature sensor

### LCD Display
- [ ] FR-010: Initialize ILI9320 LCD controller with proper power-on sequence
- [ ] FR-011: Implement 16-bit parallel write to LCD data bus
- [ ] FR-012: Configure LCD GRAM address window (240x320 pixels)
- [ ] FR-013: Set gamma correction curves for display quality

### RTOS Integration
- [ ] FR-020: Initialize FreeRTOS kernel with default task
- [ ] FR-021: Configure TIM4 as HAL timebase (separate from SysTick for RTOS)
- [ ] FR-022: Support RTOS-aware delays in LCD operations

### Communication Interfaces
- [ ] FR-030: USB CDC receive/transmit functionality
- [ ] FR-031: UART transmit for debug output
- [ ] FR-032: SPI master mode for peripheral access

## Architecture

### Memory Map
- Flash: 0x08000000 (128KB)
- SRAM: 0x20000000 (20KB)
- Stack: 0x400 bytes
- Heap: 0x200 bytes

### Pin Configuration
- LCD Data: PC0-PC7 (D0-D7), PB8-PB15 (D8-D15)
- LCD Control: PC8 (RS), PC9 (CS), PC10 (WR), PC11 (RD), PC12 (BL_EN)
- SPI1: PA5 (SCK), PA6 (MISO), PA7 (MOSI)
- USART1: PA9 (TX), PA10 (RX)
- USB: PA11 (DM), PA12 (DP)
- LEDs: PA2, PA3, PB2
- Buttons: PA0 (SW3), PA1 (SW4)

## Traceability

| Requirement | Source File | Function |
|-------------|-------------|----------|
| FR-001 | main.c | SystemClock_Config() |
| FR-002 | gpio.c | MX_GPIO_Init() |
| FR-010 | jdvlcd.c | init_lcd() |
| FR-011 | jdvlcd.c | lcd_write16() |
| FR-020 | freertos.c | MX_FREERTOS_Init() |
