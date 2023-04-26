//
// Created by xorbt on 2023-04-06.
//

#ifndef SRC_ECG_GRAPH_H
#define SRC_ECG_GRAPH_H
#include <stdint.h>
#include <stdio.h>
#include "../../config/default/peripheral/adc/plib_adc.h"
#include "../../config/default/peripheral/port/plib_port.h"

void initECGGraph(void);
void ECG(void);

#endif //SRC_ECG_GRAPH_H