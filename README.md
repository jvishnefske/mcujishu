# mcujishu

Embedded firmware for STM32F103RB driving an ILI9320 LCD display with USB CDC, UART, SPI, and FreeRTOS support.

## Quick Start

```bash
# Build firmware using Docker ARM toolchain
make build

# Clean build artifacts
make clean

# Flash to target (requires OpenOCD)
make flash
```

## Hardware

- MCU: STM32F103RBTx (Cortex-M3, 72MHz, 128KB Flash, 20KB SRAM)
- Display: ILI9320 16-bit parallel LCD (240x320)
- Interfaces: USB CDC, USART1, SPI1
- Features: FreeRTOS, IWDG watchdog, ADC temperature sensor

## Project Structure

```
Src/           - Application source files
Inc/           - Header files
startup/       - ARM Cortex-M3 startup assembly
Middlewares/   - FreeRTOS and USB middleware
```
