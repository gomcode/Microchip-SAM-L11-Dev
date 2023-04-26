//
// Created by xorbt on 2023-04-19.
//
#include <stdio.h>
#include <stdio.h>
#include <stdint.h>
#include "../../config/default/definitions.h"

#ifndef L10DEV_605_MIKROE2554_H
#define L10DEV_605_MIKROE2554_H

#endif //L10DEV_605_MIKROE2554_H

#define APP_RECEIVE_DUMMY_WRITE_LENGTH  1
#define RECEIVE_DATA_LENGHTH            2

#define MIKROE2554_ADDR            0x48
#define MIKROE2554_Temp_ADDR       0x00
#define MIKROE2554_Config_ADDR     0x01
#define MIKROE2554_THYST_ADDR      0x02
#define MIKROE2554_TOS_ADDR        0x03

#define LOAD_DATA_LENGTH            4


void MIKROE2554(void);