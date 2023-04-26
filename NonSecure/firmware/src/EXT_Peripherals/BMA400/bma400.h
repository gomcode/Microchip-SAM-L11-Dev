//
// Created by xorbt on 2023-04-20.
//
#ifndef L10DEV_605_BMA400_H
#define L10DEV_605_BMA400_H
#endif //L10DEV_605_BMA400_H

#include <stdio.h>
#include <stdio.h>
#include <stdint.h>
#include "../../config/default/definitions.h"
#include "../../config/default/peripheral/sercom/i2c_master/i2c_handler.h"

#define I2C_WRITE_LENGTH  1
#define RECEIVE_DATA_LENGHTH            2

#define BMA400_ADDR             0x14
#define BMA400_ChipID_ADDR      0x00
#define Reserved_0x01           0x01
#define BMA400_ErrReg_ADDR      0x02
#define BMA400_Status_ADDR      0x03
#define BMA400_AccXLSB_ADDR     0x04
#define BMA400_AccXMSB_ADDR     0x05
#define BMA400_AccYLSB_ADDR     0x06
#define BMA400_AccYMSB_ADDR     0x07
#define BMA400_AccZLSB_ADDR     0x08
#define BMA400_AccZMSB_ADDR     0x09
#define BMA400_STime0_ADDR      0x0A
#define BMA400_STime1_ADDR      0x0B
#define BMA400_STime2_ADDR      0x0C
#define BMA400_EVENT_ADDR       0x0D
#define BMA400_IntSTAT0_ADDR    0x0E
#define BMA400_IntSTAT1_ADDR    0x0F
#define BMA400_IntSTAT2_ADDR    0x10
#define BMA400_Temp_ADDR        0x11
#define BMA400_FIFOL0_ADDR      0x12
#define BMA400_FIFOL1_ADDR      0x13
#define BMA400_FIFOData_ADDR    0x14
#define BMA400_STEPCNT0_ADDR    0x15
#define BMA400_STEPCNT1_ADDR    0x16
#define BMA400_STEPCNT2_ADDR    0x17
#define BMA400_STEPSTAT_ADDR    0x18
#define BMA400_ACCConfig0_ADDR  0x19
#define BMA400_ACCConfig1_ADDR  0x1A
#define BMA400_ACCConfig2_ADDR  0x1B
#define BMA400_INTConfig0_ADDR  0x1F
#define BMA400_INTConfig1_ADDR  0x20

void initBMA400(void);
void BMA400(void);