/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * Copyright (c) 2018 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "cmsis_os.h"

/* USER CODE BEGIN Includes */     
#include "iwdg.h"
#include "gpio.h"
#include "usart.h"
#include "ili9320.h"
/* USER CODE END Includes */

/* Variables -----------------------------------------------------------------*/
osThreadId defaultTaskHandle;

/* USER CODE BEGIN Variables */

/* USER CODE END Variables */

/* Function prototypes -------------------------------------------------------*/
void StartDefaultTask(void const * argument);

extern void MX_USB_DEVICE_Init(void);
void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* USER CODE BEGIN FunctionPrototypes */
void StartBlinkTask(void const * argument);
/* USER CODE END FunctionPrototypes */

/* Hook prototypes */

/* Init FreeRTOS */

void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
	/* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
	/* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
	/* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityNormal, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
	/* add threads, ... */
	osThreadDef(idleTask, StartBlinkTask, osPriorityIdle, 0, 128);
	(void) osThreadCreate(osThread(idleTask), NULL);
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_QUEUES */
	/* add queues, ... */
  /* USER CODE END RTOS_QUEUES */
}

/* StartDefaultTask function */
void StartDefaultTask(void const * argument)
{
  /* init code for USB_DEVICE */
  MX_USB_DEVICE_Init();

  /* USER CODE BEGIN StartDefaultTask */




	// test to see if this lcd controler is a ili9341

	/* Infinite loop */
	for (;;)
	{
		HAL_IWDG_Refresh(&hiwdg);
		osDelay(1);
	}
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Application */
#if 0
static void lcd_write_pixel(uint8_t x, uint8_t y, uint16_t color)
{
	// basic lcd interface for exploritory testing.

}
#endif


//uint16_t lcd_read_16()


void setLeds(uint8_t bitfield)
{
	bitfield = 0 ? 1 : bitfield;
	HAL_GPIO_WritePin(led1_GPIO_Port, led1_Pin, !(bitfield & 1));
	HAL_GPIO_WritePin(led2_GPIO_Port, led2_Pin, !((bitfield >> 1) & 1));
	HAL_GPIO_WritePin(led3_GPIO_Port, led3_Pin, !((bitfield >> 2) & 1));
}
void updateLed()
{
	static uint8_t count = 0;
	static uint8_t last_grey = 0;
	uint8_t grey = (count ^ (count >> 1)) & 0x07;
	uint8_t ledState = grey ^ last_grey;
	setLeds(ledState);
	last_grey = grey;
	count++;

}
void StartBlinkTask(void const * argument)
{
	(void) argument;

	//enable blacklight
	//	puts("starting idle task.");
	//	HAL_UART_Transmit(&huart1, (uint8_t*) "heoo", len,10);
	uint8_t DeviceCode=0x001;

	putchar('\n');
	printf("c");
	printf("def code %u", DeviceCode);

	ili9320_BackLight(1);
	//HAL_GPIO_WritePin(BL_EN_GPIO_Port, BL_EN_Pin, GPIO_PIN_SET);
	Lcd_Configuration();
	ili9320_Initializtion();
	ili9320_Test();
	ili9320_Clear(100);
	u16 x0=10,y0=10,h=10,color=0x333;

	ili9320_VLine( x0, y0, h, color);
	ili9320_DrawPicture(1,1,2,2,(uint16_t[]){20,30,40,50});
	for (;;)
	{
		static uint16_t color=0;
		//printf("how much is possible to transmit over the usart?");
		//putchar('.');
		//char * my_string =  "hello";
		//uint32_t timeout = 1;
		//HAL_UART_Transmit(&huart1, (uint8_t *)my_string, (uint16_t) strlen(my_string),timeout );
		//osDelay(200);
		updateLed();
		//ili9320_SetPoint(color%320, (color/320)%240, color);
		ili9320_VLine( x0, y0, 100 , ili9320_BGR2RGB(color));
		//ili9320_Clear(color);

		osThreadYield();
		color++;
	}
}

/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
