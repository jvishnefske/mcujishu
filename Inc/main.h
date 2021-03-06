/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H__
#define __MAIN_H__

/* Includes ------------------------------------------------------------------*/

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/

#define lcd0_Pin GPIO_PIN_0
#define lcd0_GPIO_Port GPIOC
#define lcd1_Pin GPIO_PIN_1
#define lcd1_GPIO_Port GPIOC
#define lcd2_Pin GPIO_PIN_2
#define lcd2_GPIO_Port GPIOC
#define lcd3_Pin GPIO_PIN_3
#define lcd3_GPIO_Port GPIOC
#define sw3_Pin GPIO_PIN_0
#define sw3_GPIO_Port GPIOA
#define sw4_Pin GPIO_PIN_1
#define sw4_GPIO_Port GPIOA
#define led1_Pin GPIO_PIN_2
#define led1_GPIO_Port GPIOA
#define led3_Pin GPIO_PIN_3
#define led3_GPIO_Port GPIOA
#define CS_TP_Pin GPIO_PIN_4
#define CS_TP_GPIO_Port GPIOA
#define lcd4_Pin GPIO_PIN_4
#define lcd4_GPIO_Port GPIOC
#define lcd5_Pin GPIO_PIN_5
#define lcd5_GPIO_Port GPIOC
#define led2_Pin GPIO_PIN_2
#define led2_GPIO_Port GPIOB
#define lcd10_Pin GPIO_PIN_10
#define lcd10_GPIO_Port GPIOB
#define lcd11_Pin GPIO_PIN_11
#define lcd11_GPIO_Port GPIOB
#define lcd12_Pin GPIO_PIN_12
#define lcd12_GPIO_Port GPIOB
#define lcd13_Pin GPIO_PIN_13
#define lcd13_GPIO_Port GPIOB
#define lcd14_Pin GPIO_PIN_14
#define lcd14_GPIO_Port GPIOB
#define lcd15_Pin GPIO_PIN_15
#define lcd15_GPIO_Port GPIOB
#define lcd6_Pin GPIO_PIN_6
#define lcd6_GPIO_Port GPIOC
#define lcd7_Pin GPIO_PIN_7
#define lcd7_GPIO_Port GPIOC
#define lcd_rs_Pin GPIO_PIN_8
#define lcd_rs_GPIO_Port GPIOC
#define lcd_cs_Pin GPIO_PIN_9
#define lcd_cs_GPIO_Port GPIOC
#define lcd_wr_Pin GPIO_PIN_10
#define lcd_wr_GPIO_Port GPIOC
#define lcd_rd_Pin GPIO_PIN_11
#define lcd_rd_GPIO_Port GPIOC
#define BL_EN_Pin GPIO_PIN_12
#define BL_EN_GPIO_Port GPIOC
#define CS_DF_Pin GPIO_PIN_6
#define CS_DF_GPIO_Port GPIOB
#define CS_SD_Pin GPIO_PIN_7
#define CS_SD_GPIO_Port GPIOB
#define lcd8_Pin GPIO_PIN_8
#define lcd8_GPIO_Port GPIOB
#define lcd9_Pin GPIO_PIN_9
#define lcd9_GPIO_Port GPIOB

/* ########################## Assert Selection ############################## */
/**
  * @brief Uncomment the line below to expanse the "assert_param" macro in the 
  *        HAL drivers code
  */
/* #define USE_FULL_ASSERT    1U */

/* USER CODE BEGIN Private defines */
#define FALSE 0
#define TRUE 1
/* USER CODE END Private defines */

#ifdef __cplusplus
 extern "C" {
#endif
void _Error_Handler(char *, int);

#define Error_Handler() _Error_Handler(__FILE__, __LINE__)
#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H__ */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
