//
// Created by xorbt on 2023-04-20.
//

#include "bma400.h"

static uint8_t CIDRaw;
static uint8_t StatusRaw;
static uint8_t TempRaw;
static uint8_t AccXRaw[RECEIVE_DATA_LENGHTH];
static uint8_t AccYRaw[RECEIVE_DATA_LENGHTH];
static uint8_t AccZRaw[RECEIVE_DATA_LENGHTH];
static uint8_t AccXYZRaw[6];
uint8_t loadBMA400[30] = {
    BMA400_ChipID_ADDR,
    Reserved_0x01,
    BMA400_ErrReg_ADDR,
    BMA400_Status_ADDR,
    BMA400_AccXLSB_ADDR,
    BMA400_AccXMSB_ADDR,
    BMA400_AccYLSB_ADDR,
    BMA400_AccYMSB_ADDR,
    BMA400_AccZLSB_ADDR,
    BMA400_AccZMSB_ADDR,
    BMA400_STime0_ADDR,
    BMA400_STime1_ADDR,
    BMA400_STime2_ADDR,
    BMA400_EVENT_ADDR,
    BMA400_IntSTAT0_ADDR,
    BMA400_IntSTAT1_ADDR,
    BMA400_IntSTAT2_ADDR,
    BMA400_Temp_ADDR,
    BMA400_FIFOL0_ADDR,
    BMA400_FIFOL1_ADDR,
    BMA400_FIFOData_ADDR,
    BMA400_STEPCNT0_ADDR,
    BMA400_STEPCNT1_ADDR,
    BMA400_STEPCNT2_ADDR,
    BMA400_STEPSTAT_ADDR,
    BMA400_ACCConfig0_ADDR,
    BMA400_ACCConfig1_ADDR,
    BMA400_ACCConfig2_ADDR,
    BMA400_INTConfig0_ADDR,
    BMA400_INTConfig1_ADDR
};

static void writeBMA400(uint8_t* wrData, uint32_t wrLength)
{
    //SERCOM0_I2C_Write(BMA400_ADDR, wrData, wrLength);
    I2CWriteRead(BMA400_ADDR, wrData, wrLength, NULL, 0);
}

static void writeReadBMA400(uint8_t* wrData, uint8_t* rdData, uint32_t rdLength)
{
    I2CWriteRead(BMA400_ADDR, wrData, I2C_WRITE_LENGTH, rdData, rdLength);
}

static void readCID(void)
{
    writeReadBMA400(&loadBMA400[0], &CIDRaw, 1);
}

static void readStatus(void)
{
    writeReadBMA400(&loadBMA400[3], &StatusRaw, 1);
}

static void readTemp(void)
{
    writeReadBMA400(&loadBMA400[17], &TempRaw, 1);
}

static void readAccX(void)
{
    writeReadBMA400(&loadBMA400[4], &AccXRaw[0], RECEIVE_DATA_LENGHTH);
}

static void readAccY(void)
{
    writeReadBMA400(&loadBMA400[6], &AccYRaw[0], RECEIVE_DATA_LENGHTH);
}

static void readAccZ(void)
{
    writeReadBMA400(&loadBMA400[8], &AccZRaw[0], RECEIVE_DATA_LENGHTH);
}

static void readAccXYZ(void)
{
    writeReadBMA400(&loadBMA400[4], &AccXYZRaw[0], 6);
}

static void convToBinary(uint16_t input)
{
    for (int i = 15; i >= 0; i--) { //8?? ???? ???
        int result = input >> i & 1;
        printf("%d", result);
    }
}

static void printTemp(void) {
    printf("BMA400 Temp : ");
    convToBinary(TempRaw);
    TempRaw /= 8;
    TempRaw += 23;
    printf("==%d  ",TempRaw);
}

static void setACCConfig0(uint8_t Filt1_BW, uint8_t OSR_LP, uint8_t PowerMode)
{
//    POR Val :
//    Filt1_BW=0x0;
//    OSR_LP=0x0;
//    PowerMode=0x0;

    uint8_t config[2];
    config[0] = BMA400_ACCConfig0_ADDR;
    uint16_t POR = 0x00;
    POR = Filt1_BW << 7 | OSR_LP << 5 | PowerMode << 0;
    config[1] = POR;
    writeBMA400(&config[0], 2);
}

static void setACCConfig1(uint8_t GRange, uint8_t OSR, uint8_t SampleRate)
{
//    POR Val :
//    GRange=0x1;
//    OSR=0x0;
//    SampleRate=0x9;

    uint8_t config[2];
    config[0] = BMA400_ACCConfig1_ADDR;
    uint16_t POR = 0x49;
    POR = GRange << 6 | OSR << 4 | SampleRate << 0;
    config[1] = POR;
    writeBMA400(&config[0], 2);
}

void initBMA400(void) {
    setACCConfig0(0x0, 0x0, 0x2);
    setACCConfig1(0x7, 0x0, 0x0);
}

void BMA400(void)
{
//    printTemp();
//    readCID();
//    readStatus();
//    readAccX();
//    readAccY();
//    readAccZ();
//    initBMA400();

    readAccXYZ();
//    readTemp();
}