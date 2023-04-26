/* Define to prevent recursive inclusion -------------------------------------*/

/* Includes ------------------------------------------------------------------*/
#include <stdint.h>
#include "lcd_logo.h"
#include "fonts.h"
#include "../../Delay/delay.h"

/** 
  * @brief  LCD Control pins  
  */ 
#define LCD_CS_SET()            GPIO_PA14_Set()
#define LCD_CS_CLEAR()          GPIO_PA14_Clear()
#define LCD_DC_DATA()           GPIO_PA18_Set()
#define LCD_DC_COMMAND()        GPIO_PA18_Clear()
#define LCD_RES_PIN_SET()       GPIO_PA15_Set()
#define LCD_RES_PIN_CLEAR()     GPIO_PA15_Clear()

/** 
  * @brief  LCD SPI Interface pins 
  */ 

#define LCD_COLOR_BLACK           0x0000	    /*   0,   0,   0 */
#define LCD_COLOR_NAVY            0x000F      /*   0,   0, 128 */
#define LCD_COLOR_DARKGREEN       0x03E0      /*   0, 128,   0 */
#define LCD_COLOR_DARKCYAN        0x03EF      /*   0, 128, 128 */
#define LCD_COLOR_MAROON          0x7800      /* 128,   0,   0 */
#define LCD_COLOR_PURPLE          0x780F      /* 128,   0, 128 */
#define LCD_COLOR_OLIVE           0x7BE0      /* 128, 128,   0 */
#define LCD_COLOR_LIGHTGREY       0xC618      /* 192, 192, 192 */
#define LCD_COLOR_DARKGREY        0x7BEF      /* 128, 128, 128 */
#define LCD_COLOR_BLUE            0xF800      /*   0,   0, 255 */
#define LCD_COLOR_GREEN           0x07E0      /*   0, 255,   0 */
#define LCD_COLOR_CYAN            0x07FF      /*   0, 255, 255 */
#define LCD_COLOR_RED             0x001F      /* 255,   0,   0 */
#define LCD_COLOR_MAGENTA         0xF81F      /* 255,   0, 255 */
#define LCD_COLOR_YELLOW          0xFFE0      /* 255, 255, 0   */
#define LCD_COLOR_WHITE           0xFFFF      /* 255, 255, 255 */


/** 
  * @brief  LCD Lines depending on the chosen fonts.  
  */
#define LCD_LINE_0               LINE(0)
#define LCD_LINE_1               LINE(1)
#define LCD_LINE_2               LINE(2)
#define LCD_LINE_3               LINE(3)
#define LCD_LINE_4               LINE(4)
#define LCD_LINE_5               LINE(5)
#define LCD_LINE_6               LINE(6)
#define LCD_LINE_7               LINE(7)
#define LCD_LINE_8               LINE(8)
#define LCD_LINE_9               LINE(9)
#define LCD_LINE_10              LINE(10)
#define LCD_LINE_11              LINE(11)
#define LCD_LINE_12              LINE(12)
#define LCD_LINE_13              LINE(13)
#define LCD_LINE_14              LINE(14)
#define LCD_LINE_15              LINE(15)
#define LCD_LINE_16              LINE(16)
#define LCD_LINE_17              LINE(17)
#define LCD_LINE_18              LINE(18)
#define LCD_LINE_19              LINE(19)
#define LCD_LINE_20              LINE(20)
#define LCD_LINE_21              LINE(21)
#define LCD_LINE_22              LINE(22)
#define LCD_LINE_23              LINE(23)
#define LCD_LINE_24              LINE(24)
#define LCD_LINE_25              LINE(25)
#define LCD_LINE_26              LINE(26)
#define LCD_LINE_27              LINE(27)
#define LCD_LINE_28              LINE(28)
#define LCD_LINE_29              LINE(29)

/** 
  * @brief LCD default font 
  */ 
#define LCD_DEFAULT_FONT         Font16x24

/** 
  * @brief  LCD Direction  
  */ 
#define LCD_DIR_HORIZONTAL       0x0000
#define LCD_DIR_VERTICAL         0x0001

/** 
  * @brief  LCD Size (Width and Height)  
  */ 
#define LCD_PIXEL_WIDTH          127
#define LCD_PIXEL_HEIGHT         127

/* Exported macro ------------------------------------------------------------*/ 
#define ASSEMBLE_RGB(R, G, B)    ((((R)& 0xF8) << 8) | (((G) & 0xFC) << 3) | (((B) & 0xF8) >> 3))   


/** @defgroup STM320518_EVAL_LCD_Exported_Functions
  * @{
  */ 
void LCD_DeInit(void);
void LCD_Init(void);
void LCD_Foundation (void);
void LCD_CtrlLinesConfig(void);
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue);
void LCD_SPIConfig(void);

uint8_t LCD_SPI_WriteRead(uint8_t tx_data);
#define CLCD_TRANSMIT_DATA_LENGTH        1
void SPIEventHandler(uintptr_t context);
void LCD_WriteCommand(uint8_t command);
void LCD_WriteData(uint8_t data);
void LCD_WriteRAM_Prepare(void);
void LCD_WriteRAM(uint16_t RGB_Code);
void LCD_WriteRAMWord(uint16_t RGB_Code);
void LCD_PutPixel(int16_t x, int16_t y);
void LCD_ClearPixel(uint16_t x, uint16_t y);
void SERCOM0_SPI_Callback(uintptr_t context );

void LCD_AllPixelOn(void);
void LCD_AllPixelOff(void);
void LCD_SleepIn(void);
void LCD_SleepOut(void);
void LCD_ClearLine(uint16_t Line);
void LCD_Clear(uint16_t Color);
void LCD_SetFont(sFONT *fonts);
void LCD_SetTextColor(uint16_t Color);
void LCD_ClearSection(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height);
void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos);
void LCD_DrawChar(uint16_t Xpos, uint16_t Ypos, const uint16_t *c);
void LCD_DisplayChar(uint16_t Line, uint16_t Column, uint8_t Ascii);
void LCD_DisplayStringLine(uint16_t Line, uint16_t Column, uint8_t *ptr);
void LCD_DrawLine(uint16_t Xpos, uint16_t Ypos, uint16_t Length, uint8_t Direction);
void LCD_DrawRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint8_t Height);
void LCD_DrawFullRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height);
void LCD_DrawCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_DrawFullCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius);
void LCD_DrawUniLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);
void LCD_DrawMonoPict(uint16_t Xpos, uint16_t Ypos, logoFONT LCD_LogoFonts);
//void LCD_EraseMonoPict(uint16_t Xpos, uint16_t Ypos, logoFONT LCD_LogoFonts);
void LCD_SignalDisplay(uint16_t data);
void LCD_Temp(int16_t Tobj, int16_t Tamb);
void LCD_TMP006(int16_t valConfig, int16_t valMID, int16_t valDID);