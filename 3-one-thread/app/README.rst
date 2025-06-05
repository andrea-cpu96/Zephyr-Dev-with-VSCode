# ADC Driver for Zephyr (STM32F411E Discovery)

## Overview
This project demonstrates the use of the **Zephyr ADC API** to perform asynchronous ADC readings on the **STM32F411E Discovery** board. The ADC samples are stored in a buffer and processed in a dedicated thread.

## Prerequisites
- Zephyr RTOS
- STM32F411E Discovery board
- A configured ADC peripheral

## Key Features
- **Asynchronous ADC acquisition**
- **Signal-based polling mechanism**
- **Threaded execution for ADC processing**
- **DMA requirement for full buffer utilization**

## Important Notes
⚠️ **DMA must be enabled to ensure the entire ADC sample buffer is used**. Without DMA, the buffer may not be fully populated, leading to incomplete ADC readings.

## Code Structure
- `adc_init()`: Initializes the ADC peripheral and sets up the acquisition parameters.
- `periph_config()`: Configures required peripherals.
- `adc_thread()`: Continuously reads ADC data and processes it.
- `main()`: Initializes peripherals and starts ADC thread.

## How to Run
1. Ensure Zephyr is installed and configured.
2. Compile and flash the firmware onto the **STM32F411E Discovery** board.
3. Monitor ADC readings via the console.

## License
This project is licensed under the **Apache-2.0 License**.

## Author
Based on Zephyr framework, originally developed by Intel Corporation.
