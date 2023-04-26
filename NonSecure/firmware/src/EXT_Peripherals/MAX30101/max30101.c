//
// Created by xorbt on 2023-04-20.
//

#include "max30101.h"

uint8_t loadMAX30101 [LOAD_DATA_LENGTH] = {

};
/*
static uint8_t TempRaw[RECEIVE_DATA_LENGHTH];
void readTemp(void) {
    //writereadI2C(&loadMIKROE_2554[0], &TempRaw);
    //SERCOM0_I2C_WriteRead(0x48, &loadMAX30101[0], APP_RECEIVE_DUMMY_WRITE_LENGTH,  &TempRaw[0], RECEIVE_DATA_LENGHTH);
    //EIC Init
}

void convToBinary(uint16_t input) {
    for (int i = 15; i >= 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

static int16_t Temp = 0;
void convTempRaw(void) {
    Temp = 0;
    for (int i = 0; i<RECEIVE_DATA_LENGHTH; i++) {
        Temp <<= 8;
        Temp |= (int)TempRaw[i];
    }


}

void printTemp(void) {
    printf("MAX30101 Temp : ");
    convTempRaw();
    convToBinary(Temp);
    printf("==%f  ",(float)Temp/256);
}
 */
void MIKROE2554(void) {

}
