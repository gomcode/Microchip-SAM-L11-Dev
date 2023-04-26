/* Includes ------------------------------------------------------------------*/
#include "lcd.h"
#include "fonts.h"
#include <math.h>
#include "definitions.h"                // SYS function prototypes


#define POLY_Y(Z)          ((int32_t)((Points + (Z))->X))
#define POLY_X(Z)          ((int32_t)((Points + (Z))->Y))

/* Private macro -------------------------------------------------------------*/
#define ABS(X)  ((X) > 0 ? (X) : -(X))

/* Private variables ---------------------------------------------------------*/
static sFONT *LCD_Currentfonts;
/* Global variables to set the written text color */
static uint16_t TextColor = 0x0000, BackColor = 0xFFFF;

/* Private function prototypes -----------------------------------------------*/
 
 const uint8_t gamma0[96] = {
0x01, 0x04, 0x07, 0x09,
0x0b, 0x0c, 0x0d, 0x0e,
0x0f, 0x10, 0x11, 0x12,
0x13, 0x16, 0x1d, 0x21,
0x23, 0x24, 0x2e, 0x31,
0x32, 0x37, 0x41, 0x43,
0x4c, 0x51, 0x54, 0x61,
0x68, 0x6f, 0x75, 0x7f,

0x01, 0x08, 0x0e, 0x13,
0x17, 0x1a, 0x1c, 0x1e,
0x1f, 0x20, 0x21, 0x22,
0x23, 0x25, 0x2b, 0x30,
0x31, 0x33, 0x37, 0x39,
0x41, 0x43, 0x47, 0x50,
0x52, 0x55, 0x61, 0x63,
0x64, 0x70, 0x74, 0x7f,

0x01, 0x04, 0x07, 0x09,
0x0b, 0x0c, 0x0d, 0x0e,
0x0f, 0x10, 0x11, 0x12,
0x13, 0x16, 0x1e, 0x21,
0x22, 0x25, 0x2d, 0x30,
0x32, 0x37, 0x41, 0x43,
0x4c, 0x51, 0x56, 0x62,
0x69, 0x70, 0x77, 0x7f
};

/**
  * @}
  */

/** @defgroup STM320518_EVAL_LCD_Private_Functions
  * @{
  */

/**
  * @brief  DeInitializes the LCD.
  * @param  None
  * @retval None
  */

sFONT *LCD_GetFont(void);


void LCD_Init(void)
{
    LCD_CS_CLEAR();
    delay_2ms();
	LCD_RES_PIN_CLEAR();
    delay_4us();
    LCD_RES_PIN_SET();
    delay_4us();
	LCD_RES_PIN_CLEAR();

    LCD_WriteCommand(0x01); 		// software reset
//    LCD_WriteCommand(0xfd);
//    LCD_WriteData(0xb3);
    LCD_WriteCommand(0x10); 		// sleep in
    LCD_WriteCommand(0x11); 		// sleep out

    LCD_WriteCommand(0xcc);
    LCD_WriteData(0xb0);
    LCD_WriteData(0x16);
//    LCD_WriteCommand(0x11);
    LCD_WriteCommand(0x13); 		// normal display
    LCD_WriteCommand(0x20); 		// invoff
    LCD_WriteCommand(0x29); 		// disable all pixels off/on
    LCD_WriteCommand(0x2a); 		// set column address
    LCD_WriteData(0x00);
    LCD_WriteData(0x7f);
    LCD_WriteCommand(0x2b); 		// set row address
    LCD_WriteData(0x00);
    LCD_WriteData(0x7f);
    LCD_WriteCommand(0x34); 		// disable tearing effect
    LCD_WriteCommand(0x36); 		// memory access control
    LCD_WriteData(0x00);
    LCD_WriteData(0x01);
    LCD_WriteCommand(0x3a);         //interface pixel format
    LCD_WriteData(0X05);                //MEZOO Modified******
    LCD_WriteCommand(0x51);         //write luminance
    LCD_WriteData(0xf0);
    LCD_WriteCommand(0xb3);         //function selection
    LCD_WriteData(0x01);                //
    LCD_WriteCommand(0xba);         //set contrast of R
    LCD_WriteData(0xcf);                //

    LCD_WriteCommand(0xbb);
    LCD_WriteData(0x95);
    LCD_WriteCommand(0xbc);
    LCD_WriteData(0xe0);
    LCD_WriteCommand(0xbd);
    LCD_WriteData(0x1f);
    LCD_WriteCommand(0xc8);
    LCD_WriteData(0x00);
    LCD_WriteCommand(0xca);
    LCD_WriteData(0x7f);
    LCD_WriteCommand(0xcd);
    LCD_WriteData(0x55);
    LCD_WriteCommand(0xce);
    LCD_WriteData(0x07);
    LCD_WriteCommand(0xcf);
    LCD_WriteData(0x02);
    LCD_WriteCommand(0xb9);
    LCD_WriteCommand(0xd2);
    LCD_WriteData(0x30);
    LCD_WriteCommand((0xd3));
    LCD_WriteData(0x04);
    LCD_WriteCommand(0xd7);         //GPIO
    LCD_WriteData(0x00);
} //MEZOO ??

void LCD_Foundation (void) {
    LCD_Clear(LCD_COLOR_WHITE);
    LCD_SetTextColor(LCD_COLOR_BLACK);
    LCD_SetFont(&Font8x8);
    LCD_DisplayStringLine(LCD_LINE_0, 10, (uint8_t *)"MEZOO");
    LCD_DisplayChar(BatteryDigit_Ypos, BatteryUnit_Xpos, '%');
    LCD_DrawMonoPict(BatteryIcon_Xpos, BatteryIcon_Ypos, BattSIcon);
    LCD_DrawMonoPict(ChargingIcon_Xpos, ChargingIcon_Ypos, ChargingIcon);
    LCD_SetTextColor(LCD_COLOR_GREEN);
    LCD_DrawFullRect(102, 121, 13, 6);
    //LCD_DisplayStringLine(5,5,&dsp_string[5]);
}


bool isTransferDone=false;
void SPIEventHandler(uintptr_t context)
{
    isTransferDone = true;
    //printf(" SPI_INT");
}

#define CLCD_TRANSMIT_DATA_LENGTH        1
void LCD_WriteCommand(uint8_t command) {
    LCD_CS_CLEAR();
    LCD_DC_COMMAND();
    SERCOM1_SPI_Write(&command, CLCD_TRANSMIT_DATA_LENGTH);
    //while(isTransferDone != true);
    //isTransferDone = false;
    LCD_CS_SET();
}


void LCD_WriteData(uint8_t data)
{
    LCD_CS_CLEAR();
    LCD_DC_DATA();
    SERCOM1_SPI_Write(&data, CLCD_TRANSMIT_DATA_LENGTH);
    //while(isTransferDone != true);
    //isTransferDone = false;
    LCD_CS_SET();
}

void LCD_WriteRAM_Prepare(void)
{
    LCD_WriteCommand(0x2C);
}

void LCD_WriteRAM(uint16_t RGB_Code)
{
    LCD_WriteData(RGB_Code >> 8);
    LCD_WriteData(RGB_Code & 0xFF);
}

void LCD_WriteRAMWord(uint16_t RGB_Code)
{
     LCD_WriteRAM_Prepare();
     LCD_WriteRAM(RGB_Code);
}

void LCD_PutPixel(int16_t x, int16_t y)
{ 
  if((x < 0) || (x > LCD_PIXEL_WIDTH) || (y < 0) || (y > LCD_PIXEL_HEIGHT))
  {
    return;  
  }
  LCD_DrawLine(x, y, 1, LCD_DIR_HORIZONTAL);
}

void LCD_ClearPixel(uint16_t x, uint16_t y)
{
     LCD_SetCursor(x, y);
     LCD_WriteRAM_Prepare();
     LCD_WriteRAM(BackColor);
}

void LCD_SetColors(__IO uint16_t _TextColor, __IO uint16_t _BackColor)
{
  TextColor = _TextColor; 
  BackColor = _BackColor;
}

void LCD_GetColors(__IO uint16_t *_TextColor, __IO uint16_t *_BackColor)
{
  *_TextColor = TextColor; *_BackColor = BackColor;
}

void LCD_SetTextColor(__IO uint16_t Color)
{
  TextColor = Color;
}

void LCD_SetBackColor(__IO uint16_t Color)
{
  BackColor = Color;
}

void LCD_SetFont(sFONT *fonts)
{
  LCD_Currentfonts = fonts;
}

sFONT *LCD_GetFont(void)
{
  return LCD_Currentfonts;
}

void LCD_AllPixelOn(void)
{
  // This command makes no change of contents of RAM
  LCD_WriteCommand(0x23);
}

void LCD_AllPixelOff(void)
{
  // This command makes no change of contents of RAM
  LCD_WriteCommand(0x28);
}

void LCD_SleepIn(void)
{
  LCD_WriteCommand(0x10);
}

void LCD_SleepOut(void)
{
  LCD_WriteCommand(0x11);
}

void LCD_ClearLine(uint16_t Line)
{
  uint16_t refcolumn = LCD_PIXEL_WIDTH - 1;

  // Send the string character by character on LCD
  while (((refcolumn + 1) & 0xFFFF) >= LCD_Currentfonts->Width)
  {
    /* Display one character on LCD */
    LCD_DisplayChar(Line, refcolumn, ' ');
    /* Decrement the column position by 16 */
    refcolumn -= LCD_Currentfonts->Width;
  }
}

void LCD_Clear(uint16_t Color)
{
  uint32_t index = 0;

  LCD_SetCursor(0x00, 0x00);
  LCD_WriteRAM_Prepare(); /* Prepare to write GRAM */
  for(index = 0; index < 128*128; index++)
  {
    LCD_WriteRAM(Color);
  }
}

void LCD_ClearSection(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height)
{
  LCD_SetTextColor(BackColor);

  while(Height--)
  {
    LCD_DrawLine(Xpos, Ypos++, Width, LCD_DIR_HORIZONTAL);
  }
}

void LCD_SetCursor(uint16_t Xpos, uint16_t Ypos)
{
  LCD_WriteCommand(0x2A);
  LCD_WriteData(Xpos & 0xFF);
  LCD_WriteData(0x7F);

  LCD_WriteCommand(0x2B);
  LCD_WriteData(Ypos & 0xFF);
  LCD_WriteData(0x7F);
}

void LCD_DrawChar(uint16_t Xpos, uint16_t Ypos, const uint16_t *c)
{
  uint32_t index = 0, i = 0;
  uint16_t Yaddress = 0;
   
  Yaddress = Ypos;
  
  LCD_SetCursor(Xpos, Yaddress);
  
  for(index = 0; index < LCD_Currentfonts->Height; index++)
  {
    LCD_WriteRAM_Prepare();
    for(i = 0; i < LCD_Currentfonts->Width; i++)
    {
      if((((c[index] & ((0x80 << ((LCD_Currentfonts->Width / 12 ) * 8 ) ) >> i)) == 0x00) &&(LCD_Currentfonts->Width <= 12))||
        (((c[index] & (0x1 << i)) == 0x00)&&(LCD_Currentfonts->Width > 12 )))

      {
        LCD_WriteRAM(BackColor);
      }
      else
      {
        LCD_WriteRAM(TextColor);
      }
    }
    Yaddress--;
    LCD_SetCursor(Xpos, Yaddress);
  }  
}

void LCD_DisplayChar(uint16_t Line, uint16_t Column, uint8_t Ascii)
{
  Ascii -= 32;
  
  LCD_DrawChar(Column, Line, &LCD_Currentfonts->table[Ascii * LCD_Currentfonts->Height]);
}

void LCD_DisplayStringLine(uint16_t Line, uint16_t Column, uint8_t *ptr)
{
//  uint16_t refcolumn = 0;

  /* Send the string character by character on lCD */
  while ((*ptr != 0) & ((Column & 0xFFFF) <= LCD_PIXEL_WIDTH))
  {
    /* Display one character on LCD */
    LCD_DisplayChar(Line, Column, *ptr);
    /* Decrement the column position by 16 */
    Column += LCD_Currentfonts->Width;
//    refcolumn -= 1;
    /* Point on the next character */
    ptr++;
  }
}

void LCD_DrawLine(uint16_t Xpos, uint16_t Ypos, uint16_t Length, uint8_t Direction)
{
  uint32_t i = 0;

//  Ypos = (LCD_PIXEL_WIDTH - 1) - Ypos;

  LCD_SetCursor(Xpos, Ypos);
  
  if(Direction == LCD_DIR_HORIZONTAL)
  { 
    LCD_WriteRAM_Prepare();
    for(i = 0; i < Length; i++)
    {
      LCD_WriteRAM(TextColor);
    }
  }
  else
  {
    for(i = 0; i < Length; i++)
    {
      LCD_WriteRAMWord(TextColor);
      Ypos++;
      LCD_SetCursor(Xpos, Ypos);
    }
  }
}

void LCD_DrawRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint8_t Height)
{
  LCD_DrawLine(Xpos, Ypos, Width, LCD_DIR_HORIZONTAL);
  LCD_DrawLine(Xpos, (Ypos + Height - 1), (Width + 0), LCD_DIR_HORIZONTAL);
  
  LCD_DrawLine(Xpos, Ypos, Height, LCD_DIR_VERTICAL);
  LCD_DrawLine((Xpos + Width - 1), Ypos, Height, LCD_DIR_VERTICAL);
}

void LCD_DrawFullRect(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height)
{
  LCD_SetTextColor(TextColor);

  LCD_DrawLine(Xpos, Ypos, Width, LCD_DIR_HORIZONTAL);
  LCD_DrawLine(Xpos, (Ypos + Height - 1), (Width + 0), LCD_DIR_HORIZONTAL);
  
  LCD_DrawLine(Xpos, Ypos, Height, LCD_DIR_VERTICAL);
  LCD_DrawLine((Xpos + Width - 1), Ypos, Height, LCD_DIR_VERTICAL);

//  Width -= 2;
//  Height--;
//  Ypos--;

  while(Height--)
  {
    LCD_DrawLine(Xpos, Ypos++, Width, LCD_DIR_HORIZONTAL);    
  }
}

void LCD_DrawCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius)
{
  int32_t  D;/* Decision Variable */ 
  uint32_t  CurX;/* Current X Value */
  uint32_t  CurY;/* Current Y Value */ 
 
  D = 3 - (Radius << 1);
  CurX = 0;
  CurY = Radius;
  
  while (CurX <= CurY)
  {
    LCD_SetCursor(Xpos + CurX, Ypos + CurY);
    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos + CurX, Ypos - CurY);

    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos - CurX, Ypos + CurY);

    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos - CurX, Ypos - CurY);

    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos + CurY, Ypos + CurX);
    
    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos + CurY, Ypos - CurX);

    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos - CurY, Ypos + CurX);

    LCD_WriteRAMWord(TextColor);
    LCD_SetCursor(Xpos - CurY, Ypos - CurX);

    LCD_WriteRAMWord(TextColor);
    
    if (D < 0)
    { 
      D += (CurX << 2) + 6;
    }
    else
    {
      D += ((CurX - CurY) << 2) + 10;
      CurY--;
    }
    CurX++;
  }
}

void LCD_DrawFullCircle(uint16_t Xpos, uint16_t Ypos, uint16_t Radius)
{
  int32_t  D;    /* Decision Variable */ 
  uint32_t  CurX;/* Current X Value */
  uint32_t  CurY;/* Current Y Value */ 
  
  D = 3 - (Radius << 1);

  CurX = 0;
  CurY = Radius;
  
  LCD_SetTextColor(TextColor);

  while (CurX <= CurY)
  {
    if(CurY > 0) 
    {
      LCD_DrawLine(Xpos + CurX, Ypos - CurY, 2*CurY, LCD_DIR_VERTICAL);
      LCD_DrawLine(Xpos - CurX, Ypos - CurY, 2*CurY, LCD_DIR_VERTICAL);
    }

    if(CurX > 0) 
    {
      LCD_DrawLine(Xpos + CurY, Ypos - CurX, 2*CurX, LCD_DIR_VERTICAL);
      LCD_DrawLine(Xpos - CurY, Ypos - CurX, 2*CurX, LCD_DIR_VERTICAL);
    }
    
    if (D < 0)
    { 
      D += (CurX << 2) + 6;
    }
    else
    {
      D += ((CurX - CurY) << 2) + 10;
      CurY--;
    }
    CurX++;
  }

  LCD_DrawCircle(Xpos, Ypos, Radius);
}

void LCD_DrawMonoPict(uint16_t Xpos, uint16_t Ypos, logoFONT LCD_LogoFonts)
{
  uint32_t index = 0, i = 0, j = 0, k = 0;
  uint16_t Yaddress = 0, Xaddress = 0;
  
  Xaddress = Xpos;
  Yaddress = Ypos;
  
  LCD_SetCursor(Xaddress, Yaddress);
  
  for(i = 0; i < LCD_LogoFonts.Height; i++)   
  {  
    LCD_WriteRAM_Prepare();
    for(j = 0; j < (LCD_LogoFonts.Width >> 3); j++)
    {
      for(k = 0; k < 8; k++)
      {
        index = (LCD_LogoFonts.Width >> 3)*i + j;
        if((LCD_LogoFonts.table[index] & (0x80 >> k)) == 0x00)
        {
          LCD_WriteRAM(BackColor);
        }
        else
        {
          LCD_WriteRAM(TextColor);
        }   
      }
    }
    Xaddress = Xpos;
    Yaddress--;
    LCD_SetCursor(Xaddress, Yaddress);
    //LCD_CS_SET();
  }  
}

void LCD_EraseMonoPict(uint16_t Xpos, uint16_t Ypos, logoFONT LCD_LogoFonts)
{
  uint32_t i = 0, j = 0, k = 0;;
  uint16_t Yaddress = 0, Xaddress = 0;
  
  Xaddress = Xpos;
  Yaddress = Ypos;
  
  LCD_SetCursor(Xaddress, Yaddress);
  
  for(i = 0; i < LCD_LogoFonts.Height; i++)   
  {  
    LCD_WriteRAM_Prepare();
    for(j = 0; j < (LCD_LogoFonts.Width >> 3); j++)
    {
      for(k = 0; k < 8; k++)
      {
//        index = 3*i + j + 4;
//        if((Pict[index] & (0x80 >> k)) == 0x00)
//        {
          LCD_WriteRAM(BackColor);
//        }
//        else
//        {
//          LCD_WriteRAM(TextColor);
//        }   
      }
    }

    Xaddress = Xpos;
    Yaddress--;
    LCD_SetCursor(Xaddress, Yaddress);
    
  }  
}

void LCD_DrawUniLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2)
{
  int16_t deltax = 0, deltay = 0, x = 0, y = 0, xinc1 = 0, xinc2 = 0, 
  yinc1 = 0, yinc2 = 0, den = 0, num = 0, numadd = 0, numpixels = 0, 
  curpixel = 0;
  
  deltax = ABS(x2 - x1);        /* The difference between the x's */
  deltay = ABS(y2 - y1);        /* The difference between the y's */
  x = x1;                       /* Start x off at the first pixel */
  y = y1;                       /* Start y off at the first pixel */
  
  if (x2 >= x1)                 /* The x-values are increasing */
  {
    xinc1 = 1;
    xinc2 = 1;
  }
  else                          /* The x-values are decreasing */
  {
    xinc1 = -1;
    xinc2 = -1;
  }
  
  if (y2 >= y1)                 /* The y-values are increasing */
  {
    yinc1 = 1;
    yinc2 = 1;
  }
  else                          /* The y-values are decreasing */
  {
    yinc1 = -1;
    yinc2 = -1;
  }
  
  if (deltax >= deltay)         /* There is at least one x-value for every y-value */
  {
    xinc1 = 0;                  /* Don't change the x when numerator >= denominator */
    yinc2 = 0;                  /* Don't change the y for every iteration */
    den = deltax;
    num = deltax / 2;
    numadd = deltay;
    numpixels = deltax;         /* There are more x-values than y-values */
  }
  else                          /* There is at least one y-value for every x-value */
  {
    xinc2 = 0;                  /* Don't change the x for every iteration */
    yinc1 = 0;                  /* Don't change the y when numerator >= denominator */
    den = deltay;
    num = deltay / 2;
    numadd = deltax;
    numpixels = deltay;         /* There are more y-values than x-values */
  }
  
  for (curpixel = 0; curpixel <= numpixels; curpixel++)
  {
    LCD_PutPixel(x, y);         /* Draw the current pixel */
    num += numadd;              /* Increase the numerator by the top of the fraction */
    if (num >= den)             /* Check if numerator >= denominator */
    {
      num -= den;               /* Calculate the new numerator value */
      x += xinc1;               /* Change the x as appropriate */
      y += yinc1;               /* Change the y as appropriate */
    }
    x += xinc2;                 /* Change the x as appropriate */
    y += yinc2;                 /* Change the y as appropriate */
  }
}

/////////////////////////////////////////////////////////////////////////////////

#define Min_X_Pixel 10
#define Max_X_Pixel 145
#define Min_Y_Pixel 20
#define Max_Y_Pixel 83

void LCD_SignalDisplay(uint16_t data)
{
  uint8_t signal;
  static uint8_t presignal;
  static uint8_t x = Min_X_Pixel - 1;

  signal = data + Min_Y_Pixel;
  if(signal <=  Min_Y_Pixel) signal = Min_Y_Pixel;
  else if(signal > Max_Y_Pixel) signal = Max_Y_Pixel;
   
  if(x>=Min_X_Pixel)
  {
//    LCD_VLine(x, presignal, signal, Yellow);
    LCD_DrawLine(x, presignal, signal, LCD_DIR_VERTICAL);
  }
//  LCD_VLine(x+1, Min_Y_Pixel, Max_Y_Pixel, Black);
  LCD_DrawLine(x+1, Min_Y_Pixel, Max_Y_Pixel - Min_Y_Pixel + 1, LCD_DIR_VERTICAL);

  presignal = signal;
  x++;
  if(x==Max_X_Pixel) x = Min_X_Pixel - 1;
}

void LCD_Temp(int16_t Tobj, int16_t Tamb) {
     //LCD_ClearLine(LCD_LINE_2);
     //LCD_ClearLine(LCD_LINE_4);
     char tempStr1[10];
     sprintf(tempStr1, "%dC   ", Tobj);
     LCD_DisplayStringLine(LCD_LINE_2, 10, (uint8_t *)"obj : ");
     LCD_DisplayStringLine(LCD_LINE_2, 60, (uint8_t*)tempStr1);
     char tempStr2[10];
     sprintf(tempStr2, "%dC   ", Tamb);
     LCD_DisplayStringLine(LCD_LINE_4, 10, (uint8_t *)"amb : ");
     LCD_DisplayStringLine(LCD_LINE_4, 60, (uint8_t*)tempStr2);
}

void LCD_TMP006(int16_t valConfig, int16_t valMID, int16_t valDID) {
    char tempStr3[30];
    sprintf(tempStr3, "%d", valConfig);
    LCD_DisplayStringLine(LCD_LINE_6, 10, (uint8_t *)"Conf: ");
    LCD_DisplayStringLine(LCD_LINE_6, 60, (uint8_t*)tempStr3);
    char tempStr4[30];
    sprintf(tempStr4, "%d", valMID);
    LCD_DisplayStringLine(LCD_LINE_7, 10, (uint8_t *)"MID : ");
    LCD_DisplayStringLine(LCD_LINE_7, 60, (uint8_t*)tempStr4);
    char tempStr5[30];
    sprintf(tempStr5, "%d", valDID);
    LCD_DisplayStringLine(LCD_LINE_8, 10, (uint8_t *)"DID : ");
    LCD_DisplayStringLine(LCD_LINE_8, 60, (uint8_t*)tempStr5);

}
