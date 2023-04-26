//
// Created by xorbt on 2023-04-20.
//

#include <stdio.h>
#include <math.h>
#include <stdio.h>
#include <stdint.h>
#include "../../config/default/definitions.h"

#ifndef L10DEV_605_MAX30101_H
#define L10DEV_605_MAX30101_H

#endif //L10DEV_605_MAX30101_H

#define APP_RECEIVE_DUMMY_WRITE_LENGTH  1
#define RECEIVE_DATA_LENGHTH            2

#define MAX30101_ADDR                   0x57

#define MAX30101_IntStatus1_ADDR        0x00
#define MAX30101_IntStatus2_ADDR        0x01
#define MAX30101_IntEn1_ADDR            0x02
#define MAX30101_IntEn2_ADDR            0x03
#define MAX30101_FIFOConfig_ADDR        0x08
#define MAX30101_ModeConfig_ADDR        0x09
#define MAX30101_SPO2Config_ADDR        0x0A

#define MAX30101_DieTemp_ADDR           0x1F
#define MAX30101_DieTempFrac_ADDR       0x20
#define MAX30101_DieTempConfig_ADDR     0x21
#define MAX30101_Config_ADDR            0x01
#define MAX30101_THYST_ADDR             0x02
#define MAX30101_TOS_ADDR               0x03

#define LOAD_DATA_LENGTH            4


void MAX30101(void);