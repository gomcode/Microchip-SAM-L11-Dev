//
// Created by xorbt on 2023-04-19.
//

#include "mikroe2554.h"



uint8_t loadMIKROE2554 [LOAD_DATA_LENGTH] = {
    MIKROE2554_Temp_ADDR,
    MIKROE2554_Config_ADDR,
    MIKROE2554_THYST_ADDR,
    MIKROE2554_TOS_ADDR
};
/*
void writereadI2C(uint8_t* REG_ADDR, uint8_t* readData) {
    SERCOM0_I2C_WriteRead(MIKROE_2554_ADDR, *REG_ADDR, APP_RECEIVE_DUMMY_WRITE_LENGTH,  *readData[0], RECEIVE_DATA_LENGHTH);
}
*/
static uint8_t TempRaw[RECEIVE_DATA_LENGHTH];
static void readTemp(void) {
    //writereadI2C(&loadMIKROE_2554[0], &TempRaw);
    SERCOM0_I2C_WriteRead(MIKROE2554_ADDR, &loadMIKROE2554[0], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &TempRaw[0], RECEIVE_DATA_LENGHTH);
    //EIC Init
}

static void convToBinary(uint16_t input) {
    for (int i = 15; i >= 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

static int16_t Temp = 0;
static void convTempRaw(void) {
    Temp = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        Temp <<= 8;
        Temp |= (int)TempRaw[i];
    }
}

static void printTemp(void) {
    printf("MIKROE2554 Temp : ");
    convTempRaw();
    convToBinary(Temp);
    printf("==%f  ",(float)Temp/256);
}

void runMIKROE2554(void) {
    readTemp();
    printTemp();
}