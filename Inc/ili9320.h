//#include "stm32f10x_conf.h"
#include "main.h"
#include "gpio.h"
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#define Set_nWr 	HAL_GPIO_WritePin(lcd_wr_GPIO_Port, lcd_wr_Pin, GPIO_PIN_SET);
#define Clr_nWr 	HAL_GPIO_WritePin(lcd_wr_GPIO_Port, lcd_wr_Pin, GPIO_PIN_RESET);

#define Set_Cs  	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_SET);
#define Clr_Cs  	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_RESET);

#define Set_Rs  	HAL_GPIO_WritePin(lcd_rs_GPIO_Port, lcd_rs_Pin, GPIO_PIN_SET);
#define Clr_Rs  	HAL_GPIO_WritePin(lcd_rs_GPIO_Port, lcd_rs_Pin, GPIO_PIN_RESET);

#define Set_nRd 	HAL_GPIO_WritePin(lcd_rd_GPIO_Port, lcd_rd_Pin, GPIO_PIN_SET);
#define Clr_nRd 	HAL_GPIO_WritePin(lcd_rd_GPIO_Port, lcd_rd_Pin, GPIO_PIN_RESET);

#if 0
#define Set_Rst 	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_SET);
#define Clr_Rst 	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_RESET);
#endif

#define Lcd_Light_ON   	HAL_GPIO_WritePin(BL_EN_GPIO_Port, BL_EN_Pin, GPIO_PIN_SET);
#define Lcd_Light_OFF  	HAL_GPIO_WritePin(BL_EN_GPIO_Port, BL_EN_Pin, GPIO_PIN_RESET);


u16 CheckController(void);
void Lcd_Configuration(void);
void ili9320_Initializtion(void);
void ili9320_Reset(void);
void ili9320_WriteRegister(u16 index,u16 dat);
void ili9320_SetCursor(u16 x,u16 y);
void ili9320_SetWindows(u16 StartX,u16 StartY,u16 EndX,u16 EndY);
void ili9320_DrawPicture(u16 x0, u16 y0,u16 dX,u16 dY,u16 *pic);
void ili9320_SetPoint(u16 x,u16 y,u16 point);
void ili9320_PutChar(u16 x,u16 y,u8 c,u16 charColor,u16 bkColor);
void ili9320_Clear(u16 dat);
void ili9320_Delay(u32 nCount);
void ili9320_Test(void);
u16 ili9320_GetCode(void);
void ili9320_WriteData(u16 dat);
void ili9320_WriteIndex(u16 idx);

void ili9320_VLine(u16 x0, u16 y0, u16 h,u16 color);
void ili9320_BackLight(u8 status);

u16 ili9320_BGR2RGB(u16 c);

u16 ili9320_GetPoint(u16 x,u16 y);
u16 ili9320_ReadData(void);
u16 ili9320_ReadRegister(u16 index);

u16 GUI_Color565(u32 RGB);  // RGB��ɫתΪ16λ(565)

void GUI_Text(u16 x, u16 y, u8 *str, u16 len,u16 Color, u16 bkColor);
void GUI_Line(u16 x0, u16 y0, u16 x1, u16 y1,u16 color);  // ����
void GUI_Circle(u16 cx,u16 cy,u16 r,u16 color,u8 fill);  // ��԰
void GUI_Rectangle(u16 x0, u16 y0, u16 x1, u16 y1,u16 color,u8 fill); // ������
void GUI_Square(u16 x0, u16 y0, u16 with, u16 color,u8 fill);  // ��������


void Touch_Initializtion(void);
u16  Touch_GetPhyX(void);
u16  Touch_GetPhyY(void);
u16  Touch_MeasurementX(void);
u16  Touch_MeasurementY(void);

#define White          0xFFFF//��ɫ
#define Black          0x0000//��ɫ
#define Grey           0xF7DE
#define DGrey          0x8610
#define Blue           0x001F
#define Blue2          0x051F
#define Red            0xF800
#define Magenta        0xF81F
#define Green          0x07E0
#define Cyan           0x7FFF
#define Yellow         0xFFE0



