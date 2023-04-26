#pragma once
#ifndef __TMP006_H__
#define __TMP006_H__

/*******************************************************************************
 *
 * If building with a C++ compiler, make all of the definitions in this header
 * have a C binding.
 *
 ******************************************************************************/
#ifdef __cplusplus
extern "C"
{
#endif

#define APP_ACK_DATA_LENGTH             1
#define APP_RECEIVE_DUMMY_WRITE_LENGTH  1
#define APP_TRANSMIT_DATA_LENGTH        2
#define APP_RECEIVE_DATA_LENGTH         2

#define TMP006_ADDR                     0x40 // 0b0100 0000
#define TMP006_Vobj_ADDR                0x00 // Tdie Register
#define TMP006_Tamb_ADDR                0x01 // Tamb Register
#define TMP006_CONFIG_ADDR              0x02 // Configuration Register
#define TMP006_MID_ADDR                 0xFE // Manufacturer ID
#define TMP006_DID_ADDR                 0xFF // Device ID

#define RECEIVE_DATA_LENGHTH            2
#define INIT_DATA_LENGTH                3
#define TEMP_REQUEST_DATA_LENGHTH       6

void TMP006WriteRead(uint8_t* wrData, uint8_t* rdData);

/*******************************************************************************
 *
 * \brief  Temperature reading structure
 *
 ******************************************************************************/
int getAbit(uint16_t x, int n);

struct TempReading
{
    /*! Calculated temperature reading */
    double temp;

    /*! Stores the current object voltage */
    int16_t vObj;

    /*! Stores the current ambient temperature */
    int16_t tDie;
};

void readConfig(void);
void readMID(void);
void readDID(void);
void readtAmb(void);
void readvObj(void);

struct TempReading TMP006_getTemp(void);
double TMP006_calculateTemp(double * tDie, double * vObj);

void getvObj(void);
void gettAmb(void);
void getConfig(void);
void getMID(void);
void getDID(void);

void printvObjVal(void);
void printtAmbVal(void);
void printConfig(void);
void printMID(void);
void printDID(void);


void TMP006_Init(void);
void TMP006(void);

/*******************************************************************************
 *
 * Mark the end of the C bindings section for C++ compilers.
 *
 ******************************************************************************/
#ifdef __cplusplus
}
#endif

#endif // __TMP006_H__