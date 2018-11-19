#include "gpio.h"
#include "main.h"
#include "cmsis_os.h"

#define delayms osDelay

void lcd_write16(uint16_t data, uint8_t is_data)
{
	//OTM3225A??? https://www.mikrocontroller.net/attachment/79499/OTM3225A.pdf
	//assume lcd_rs is command data select
	HAL_GPIO_WritePin(lcd_rs_GPIO_Port, lcd_rs_Pin, is_data);
	//enable chip select, active low
	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_SET);
	// wr low
	HAL_GPIO_WritePin(lcd_wr_GPIO_Port, lcd_wr_Pin, GPIO_PIN_RESET);
	// write 16 bits to gpio
	// TODO: use PORTs instead of HAL
//	lcd0_GPIO_Port->ODR = (lcd0_GPIO_Port->ODR)
//
//	lcd8_GPIO_Port->ODR = (lcd0_)
	HAL_GPIO_WritePin(lcd0_GPIO_Port, lcd0_Pin, data & 1);
	HAL_GPIO_WritePin(lcd1_GPIO_Port, lcd1_Pin, (data >> 1) & 1);
	HAL_GPIO_WritePin(lcd2_GPIO_Port, lcd2_Pin, (data >> 2) & 1);
	HAL_GPIO_WritePin(lcd3_GPIO_Port, lcd3_Pin, (data >> 3) & 1);
	HAL_GPIO_WritePin(lcd4_GPIO_Port, lcd4_Pin, (data >> 4) & 1);
	HAL_GPIO_WritePin(lcd5_GPIO_Port, lcd5_Pin, (data >> 5) & 1);
	HAL_GPIO_WritePin(lcd6_GPIO_Port, lcd6_Pin, (data >> 6) & 1);
	HAL_GPIO_WritePin(lcd7_GPIO_Port, lcd7_Pin, (data >> 7) & 1);
	HAL_GPIO_WritePin(lcd8_GPIO_Port, lcd8_Pin, (data >> 8) & 1);
	HAL_GPIO_WritePin(lcd9_GPIO_Port, lcd9_Pin, (data >> 9) & 1);
	HAL_GPIO_WritePin(lcd10_GPIO_Port, lcd10_Pin, (data >> 10) & 1);
	HAL_GPIO_WritePin(lcd11_GPIO_Port, lcd11_Pin, (data >> 11) & 1);
	HAL_GPIO_WritePin(lcd12_GPIO_Port, lcd12_Pin, (data >> 12) & 1);
	HAL_GPIO_WritePin(lcd13_GPIO_Port, lcd13_Pin, (data >> 13) & 1);
	HAL_GPIO_WritePin(lcd14_GPIO_Port, lcd14_Pin, (data >> 14) & 1);
	HAL_GPIO_WritePin(lcd15_GPIO_Port, lcd15_Pin, (data >> 15) & 1);
	//bring wr high to transmit data
	HAL_GPIO_WritePin(lcd_wr_GPIO_Port, lcd_wr_Pin, GPIO_PIN_SET);

}
void LCD_CtrlWrite_ILI9320(uint32_t arg1, uint32_t arg2)
{
	lcd_write16(arg1, 0);
	lcd_write16(arg2, 1);
}

void init_lcd()
{
	//configure default led states

	//************* Start Initial Sequence **********//
	LCD_CtrlWrite_ILI9320(0x00E5, 0x8000); // Set the Vcore voltage and this setting is must.
	LCD_CtrlWrite_ILI9320(0x0000, 0x0001); //  Start  internal  OSC.
	LCD_CtrlWrite_ILI9320(0x0001, 0x0100); //  set  SS  and  SM  bit
	LCD_CtrlWrite_ILI9320(0x0002, 0x0700); //  set  1  line  inversion
	LCD_CtrlWrite_ILI9320(0x0003, 0x1030); //  set  GRAM  write  direction  and  BGR=1.
	LCD_CtrlWrite_ILI9320(0x0004, 0x0000); //  Resize  register

	LCD_CtrlWrite_ILI9320(0x0008, 0x0202); // set the back porch and front porch
	LCD_CtrlWrite_ILI9320(0x0009, 0x0000); //  set  non-display  area  refresh  cycle  ISC[3:0]
	LCD_CtrlWrite_ILI9320(0x000A, 0x0000); //  FMARK  function
	LCD_CtrlWrite_ILI9320(0x000C, 0x0000); //  RGB  interface  setting
	LCD_CtrlWrite_ILI9320(0x000D, 0x0000); //  Frame  marker  Position
	LCD_CtrlWrite_ILI9320(0x000F, 0x0000); //  RGB  interface  polarity
	//*************Power  On  sequence  ****************//
	LCD_CtrlWrite_ILI9320(0x0010, 0x0000); //  SAP,  BT[3:0],  AP,  DSTB,  SLP,  STB
	LCD_CtrlWrite_ILI9320(0x0011, 0x0007); //  DC1[2:0],  DC0[2:0],  VC[2:0]
	LCD_CtrlWrite_ILI9320(0x0012, 0x0000); //  VREG1OUT  voltage
	LCD_CtrlWrite_ILI9320(0x0013, 0x0000); //  VDV[4:0]  for  VCOM  amplitude
	delayms(200); //  Dis-charge  capacitor  power  voltage
	LCD_CtrlWrite_ILI9320(0x0010, 0x17B0); //  SAP,  BT[3:0],  AP,  DSTB,  SLP,  STB
	LCD_CtrlWrite_ILI9320(0x0011, 0x0037); // R11h=0x0031 at VCI=3.3V DC1[2:0], DC0[2:0], VC[2:0]

	// Delay 50ms
	LCD_CtrlWrite_ILI9320(0x0012, 0x013C); //  R12h=0x0138 at VCI=3.3V VREG1OUT voltage
	delayms(50);
	// Delay 50ms
	LCD_CtrlWrite_ILI9320(0x0013, 0x1C00); //  R13h=0x1800 at VCI=3.3V VDV[4:0] for VCOM amplitude
	LCD_CtrlWrite_ILI9320(0x0029, 0x000E); //  R29h=0x0008 at VCI=3.3V VCM[4:0] for VCOMH
	delayms(50);
	LCD_CtrlWrite_ILI9320(0x0020, 0x0000); //  GRAM  horizontal  Address
	LCD_CtrlWrite_ILI9320(0x0021, 0x0000); //  GRAM  Vertical  Address

	// ----------- Adjust the Gamma    Curve ----------//
	LCD_CtrlWrite_ILI9320(0x0030, 0x0504);
	LCD_CtrlWrite_ILI9320(0x0031, 0x0703);
	LCD_CtrlWrite_ILI9320(0x0032, 0x0702);
	LCD_CtrlWrite_ILI9320(0x0035, 0x0101);
	LCD_CtrlWrite_ILI9320(0x0036, 0x0A1F);
	LCD_CtrlWrite_ILI9320(0x0037, 0x0504);
	LCD_CtrlWrite_ILI9320(0x0038, 0x0003);
	LCD_CtrlWrite_ILI9320(0x0039, 0x0706);
	LCD_CtrlWrite_ILI9320(0x003C, 0x0707);
	LCD_CtrlWrite_ILI9320(0x003D, 0x091F);

	//------------------ Set GRAM area ---------------//
	LCD_CtrlWrite_ILI9320(0x0050, 0x0000); //  Horizontal  GRAM  Start  Address
	LCD_CtrlWrite_ILI9320(0x0051, 0x00EF); //  Horizontal  GRAM  End  Address
	LCD_CtrlWrite_ILI9320(0x0052, 0x0000); //  Vertical  GRAM  Start  Address
	LCD_CtrlWrite_ILI9320(0x0053, 0x013F); //  Vertical  GRAM  Start  Address
	LCD_CtrlWrite_ILI9320(0x0060, 0x2700); //  Gate  Scan  Line
	LCD_CtrlWrite_ILI9320(0x0061, 0x0001); //  NDL,VLE,  REV
	LCD_CtrlWrite_ILI9320(0x006A, 0x0000); //  set  scrolling  line
	//-------------- Partial Display Control ---------//
	LCD_CtrlWrite_ILI9320(0x0080, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0081, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0082, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0083, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0084, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0085, 0x0000);
	//-------------- Panel Control -------------------//
	LCD_CtrlWrite_ILI9320(0x0090, 0x0010);
	LCD_CtrlWrite_ILI9320(0x0092, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0093, 0x0003);
	LCD_CtrlWrite_ILI9320(0x0095, 0x0110);
	LCD_CtrlWrite_ILI9320(0x0097, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0098, 0x0000);
	LCD_CtrlWrite_ILI9320(0x0007, 0x0173); //  262K  color  and  display  ON

}


void test_scan()
{
	static uint8_t color=0;

	HAL_GPIO_WritePin(lcd_cs_GPIO_Port, lcd_cs_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(lcd_rs_GPIO_Port, lcd_rs_Pin, GPIO_PIN_SET); // default state for (unused) read clock.
	for (int i = 0; i < 65535; ++i)
	{
		// active low deselect lcd chip.

		lcd_write16(i, 0);

		lcd_write16(color, 1);
		// lcd_write16(i,(scan_state>1)&1);

	}

}
