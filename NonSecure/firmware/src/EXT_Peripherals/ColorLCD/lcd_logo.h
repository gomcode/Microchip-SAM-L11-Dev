#ifndef __LCD_Logo_H
#define __LCD_Logo_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/   
#include <stdint.h>
	 
#define BT_ION_XPOS             60
#define BT_ION_YPOS             127
	 
//#define DIGIT100_XPOS			8	 
//#define DIGIT10_XPOS			(DIGIT100_XPOS+32)		 
//#define DIGIT1_XPOS				(DIGIT10_XPOS+32)	
//#define DIGIT100_YPOS			90	

#define DIGIT10_XPOS			24		 
#define DIGIT1_XPOS				(DIGIT10_XPOS+32)	
#define DIGIT100_YPOS			90		 

#define CHG_XPOS             	4
#define CHG_YPOS             	24	 
	 
#define LINK_XPOS             	62
#define LINK_YPOS             	CHG_YPOS	 
	 
#define BatteryDigit10_Xpos             72        
#define BatteryDigit1_Xpos              (BatteryDigit10_Xpos + 8)
#define BatteryUnit_Xpos                (BatteryDigit10_Xpos + 16)
#define BatteryDigit_Ypos               127
   
#define BatteryIcon_Xpos                100
#define BatteryIcon_Ypos                127
   
#define ChargingIcon_Xpos               119
#define ChargingIcon_Ypos               127

typedef struct _logoFont
{    
  const uint8_t *table;
  uint8_t Width;
  uint8_t Height;
  
} logoFONT;

extern logoFONT Num0;
extern logoFONT Num1;
extern logoFONT Num2;
extern logoFONT Num3;
extern logoFONT Num4;
extern logoFONT Num5;
extern logoFONT Num6;
extern logoFONT Num7;
extern logoFONT Num8;
extern logoFONT Num9;

extern logoFONT Num0_3248;
extern logoFONT Num1_3248;
extern logoFONT Num2_3248;
extern logoFONT Num3_3248;
extern logoFONT Num4_3248;
extern logoFONT Num5_3248;
extern logoFONT Num6_3248;
extern logoFONT Num7_3248;
extern logoFONT Num8_3248;
extern logoFONT Num9_3248;

extern logoFONT BattSIcon;
extern logoFONT Batt3Icon;
extern logoFONT ChargingIcon;
extern logoFONT BlueToothSIcon;
extern logoFONT BlueToothIcon;
extern logoFONT AlarmIcon;

#ifdef __cplusplus
}
#endif

#endif 
