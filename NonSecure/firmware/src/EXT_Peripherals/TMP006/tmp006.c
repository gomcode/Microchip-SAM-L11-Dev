/*******************************************************************************
 *
 * TMP006.c - Driver for the TMP006 Module.
 *
 ******************************************************************************/

#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <stdint.h>
#include "tmp006.h"
#include "../../EXT_Peripherals/ColorLCD/lcd.h"
#include "../../config/default/definitions.h"
#include "../../Delay/delay.h"

static double tDie[4] = {0, 0, 0, 0};
static uint8_t vObjRaw[RECEIVE_DATA_LENGHTH];
static uint8_t tAmbRaw[RECEIVE_DATA_LENGHTH];
static uint8_t ConfigRaw[RECEIVE_DATA_LENGHTH];
static uint8_t MIDRaw[RECEIVE_DATA_LENGHTH];
static uint8_t DIDRaw[RECEIVE_DATA_LENGHTH];

uint8_t TMP006InitData[INIT_DATA_LENGTH] =
    {
            TMP006_CONFIG_ADDR,
            0x75, 0x00 // set to 0111 0101 (0000 0000)
    };

uint8_t TMP006Load[TEMP_REQUEST_DATA_LENGHTH] =
    {
            TMP006_ADDR,
            TMP006_Vobj_ADDR,
            TMP006_Tamb_ADDR,
            TMP006_CONFIG_ADDR,
            TMP006_MID_ADDR,
            TMP006_DID_ADDR
    };


    /********************/
    /****** Modules *****/
    /********************/


void setConfig(uint16_t configVal) {
    SERCOM0_I2C_Write(TMP006_ADDR, &TMP006InitData[0], 3);
    /*
     uint8_t TMP006ID[2] = {
             (uint8_t) configVal>>8, (uint8_t) configVal
     };
     SERCOM1_I2C_Write(TMP006_ADDR, &TMP006ID[0], 2);
     */
}

void TMP006WriteRead(uint8_t* REG_ADDR, uint8_t* readData) {
    SERCOM0_I2C_WriteRead(TMP006_ADDR, REG_ADDR, APP_RECEIVE_DUMMY_WRITE_LENGTH,  readData, RECEIVE_DATA_LENGHTH);

}

static void convToBinary(uint16_t input) {
    for (int i = 15; i >= 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

int getAbit(uint16_t x, int n) { // getbit()
    return (x & (1 << n)) >> n;
}


    /*******************/
    /****** READER *****/
    /*******************/


void readConfig(void) {
    //TMP006WriteRead(&TMP006Load[3], &ConfigRaw[0]);
    SERCOM0_I2C_WriteRead(TMP006_ADDR, &TMP006Load[3], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &ConfigRaw[0], RECEIVE_DATA_LENGHTH);
}

void readMID(void) {
    //TMP006WriteRead(&TMP006Load[4], &MIDRaw[0]);
    SERCOM0_I2C_WriteRead(TMP006_ADDR, &TMP006Load[4], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &MIDRaw[0], RECEIVE_DATA_LENGHTH);
}

void readDID(void) {
    //TMP006WriteRead(&TMP006Load[5], &DIDRaw[0]);
    SERCOM0_I2C_WriteRead(TMP006_ADDR, &TMP006Load[5], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &DIDRaw[0], RECEIVE_DATA_LENGHTH);
}

void readtAmb(void) {
    //TMP006WriteRead(&TMP006Load[2], &tAmbRaw[0]);
    SERCOM0_I2C_WriteRead(TMP006_ADDR, &TMP006Load[2], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &tAmbRaw[0], RECEIVE_DATA_LENGHTH);
}

void readvObj(void) {
    //TMP006WriteRead(&TMP006Load[1], &vObjRaw[0]);
    SERCOM0_I2C_WriteRead(TMP006_ADDR, &TMP006Load[1], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &vObjRaw[0], RECEIVE_DATA_LENGHTH);
}


    /*******************/
    /****** Getter *****/
    /*******************/


static int16_t vObjVal = 0;
void getvObj(void) {
    vObjVal = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        vObjVal <<= 8;
        vObjVal |= (int)vObjRaw[i];
    }
}

static int16_t tAmbVal = 0;
void gettAmb(void) {
    tAmbVal=0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        tAmbVal <<= 8;
        tAmbVal |= (int)tAmbRaw[i];
    }
}

static uint16_t Config=0;
void getConfig(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= ConfigRaw[i];
    }
    Config = result;
}

static uint16_t MID=0;
void getMID(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= MIDRaw[i];
    }
    MID = result;
}

static uint16_t DID=0;
void getDID(void) {
    uint16_t result = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        result <<= 8;
        result |= DIDRaw[i];
    }
    DID = result;
}


    /********************/
    /****** Printer *****/
    /*********************/


void printtAmbVal(void) {
    int16_t temp = 0;
    printf("tAmbVal : ");
    temp = tAmbVal;
    temp >>= 2;
    temp *= 0.03125f;

    convToBinary(temp);
    printf("==%d  ",temp);
    //printf("   %d+%d",(int)tAmbVal[0],(int)tAmbVal[1]);
    //printf("\n");
}

void printvObjVal(void) {
    printf("vObjVal : ");
    convToBinary(vObjVal);
    printf("==%d  ",vObjVal);
}

void printConfig(void) {
    printf("Configuration Reg. : ");
    convToBinary(Config);
    printf("==%d  ",(int)Config);
}

void printMID(void) {
    printf("Manufacturer ID : ");
    convToBinary(MID);
    printf("==%d  ",(int)MID);
}

void printDID(void) {
    printf("Device ID : ");
    convToBinary(DID);
    printf("==%d  ",(int)DID);
}


    /*************************/
    /****** Temp. Getter *****/
    /*************************/


struct TempReading TMP006_getTemp(void)
{
    struct TempReading tempRead;
    double vObjcorr = 0;
    double tslope = 0;
    double alpha = 2.96 * pow(10, -4);

    /* Shift oldest tdie temp out */
    tDie[0] = tDie[1];
    tDie[1] = tDie[2];
    tDie[2] = tDie[3];

    /* Read the object voltage. Assuming that the data is ready. */
    tempRead.vObj = vObjVal;//vObjVal;
    /* Read the ambient temperature */
    tempRead.tDie = tAmbVal;//tAmbVal;
    //printf("Tobject == %d, Tambient == %d\r\n", vObjVal, tAmbVal);
    /* Convert latest tDie measurement to Kelvin */
    tDie[3] = (((double)(tempRead.tDie >> 2)) * .03125) + 273.15;

    if(tDie[0] != 0)
    {
        /* Executes only if all 4 tdie variables are non-zero */

        /* Calculate tslope */
        tslope = -(0.3*tDie[0]) - (0.1*tDie[1]) + (0.1*tDie[2]) + (0.3*tDie[3]);

        /* Correct sensor voltage */
        vObjcorr = (((double)(tempRead.vObj)) * .00000015625) + (tslope * alpha);
    }
    else
    {
        /* Executes if all 4 tdie variables have not yet been filled */
        vObjcorr = ((double)(tempRead.vObj)) * .00000015625;
    }

    tempRead.temp = TMP006_calculateTemp(&tDie[3], &vObjcorr);

    return tempRead;
}

/*!
 *
 * Function to calulate temperature based on tdie and vobj
 *
 * @param tDie temperature of the die converted to Kelvin
 * @param vObj object voltage converted first by multiplying 1.5625e-7
 *
 * @return temperature value in Celcius
 *
 */
double TMP006_calculateTemp(double * tDie, double * vObj)
{
    /* Calculate TMP006. This needs to be reviewed and calibrated by TMP group */
    double S0 = 5.4 * pow(10, -14);       /* Default == 5.4 * pow(10, -14) */
    double a1 = 1.75*pow(10, -3);
    double a2 = -1.678*pow(10, -5);
    double b0 = -2.94*pow(10, -5);
    double b1 = -5.7*pow(10, -7);
    double b2 = 4.63*pow(10, -9);

    double c2 = 13.4;
    double Tref = 298.15;
    double S = S0*(1.0 + a1*(*tDie - Tref) + a2*pow((*tDie - Tref),2));
    double Vos = b0 + b1*(*tDie - Tref) + b2*pow((*tDie - Tref),2);
    double fObj = (*vObj - Vos) + c2*pow((*vObj - Vos),2);
    double Tobj = pow(pow(*tDie,4) + (fObj/S),.25);

    return (Tobj - 273.15);
}


void convvObj(void) {
    vObjVal = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        vObjVal <<= 8;
        vObjVal |= (int)vObjRaw[i];
    }
}
void convtAmb(void) {
    tAmbVal=0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        tAmbVal <<= 8;
        tAmbVal |= (int)tAmbRaw[i];
    }
}
    /************************/
    /****** TMP006 main *****/
    /************************/


int16_t Tobject, Tambient;
static struct TempReading currTemp;
void EIC_User_Handler(uintptr_t context)
{
    TMP006();
}

void TMP006_Init(void) {
    setConfig(0xF500U);
    EIC_CallbackRegister(EIC_PIN_1, EIC_User_Handler, 0);
    //setConfig(0x7500U);
}

void TMP006(void) {
    TMP006WriteRead(&TMP006Load[3], &ConfigRaw[0]);
    printf("\n");

    readConfig();
    printConfig();

    readMID();
    printMID();

    readDID();
    printDID();

    readtAmb();
    convtAmb();
    printtAmbVal();


    convvObj();
    printvObjVal();
    printf("\n");

    currTemp = TMP006_getTemp();
    Tobject = (int16_t)(currTemp.temp*1.0);
    Tambient = (int16_t)(((double)(currTemp.tDie >> 2)) * .03125);
    printf("Tobject == %d, Tambient == %d\r\n", Tobject, Tambient);
}