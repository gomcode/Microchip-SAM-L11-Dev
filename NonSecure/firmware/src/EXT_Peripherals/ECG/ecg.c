//
// Created by xorbt on 2023-04-06.
//

#include "ecg.h"
#include "../../config/default/peripheral/dac/plib_dac.h"

static uint16_t adval = 0;
//static uint16_t i = 0;

void initECGGraph(void) {
    ADC_Enable();
    ADC_ConversionStart();
}

static uint16_t int_cnt1 = 0;
static uint16_t int_cnt2 = 0;
static uint16_t arr_adval[8] = {0};
void filter_8p(uint16_t input) {
    uint16_t sum = 0;
    for(int i=0; i<7; i++) {
        arr_adval[i] = arr_adval[i+1];
        sum += arr_adval[i];
    }

    arr_adval[7] = input;
    sum += arr_adval[7];
    sum /= 8; // Calculate Average
    adval = sum;
}

static uint16_t bpm = 0;
static uint16_t val1 = 0;
static uint16_t val2 = 0;
static uint16_t val3 = 0;
static uint16_t thres = 0xFFFF;
static uint16_t tmr1P = 480; // tmr1 period
static uint16_t isPeakPoint = 0;
void convBPM(uint16_t input) {
    int_cnt1++; // interrupt xHz일 때 1초에 x씩 증가
    if ( thres<adval ) {
        val1 = val2;
        val2 = val3;
        val3 = input;

        if ( val2>=val1 ) {
            if ( val3<val2 ) {
                if ( isPeakPoint==0 ) {
                    bpm =(60*tmr1P/int_cnt1);
                    /*				if (int_cnt1%8<6) {
                                        sum += (60*tmr1P/int_cnt1);
                                    } else {
                                        bpm = sum/8;
                                    }    */
                    int_cnt1=0;
                    isPeakPoint=1;
                }
            }
        }

    } else {
        isPeakPoint=0;
    }
}

// to Control proper heartbeat-Threshold Adaptively  //
static uint16_t advalMax = 0x0000;
static uint16_t advalMin = 0xFFFF;
void thresAdaptiveControl(uint16_t adval) {
    int_cnt2++;
    if(int_cnt2<tmr1P) { // Determine Minimum BPM ==
        if(advalMax < adval) {
            advalMax = adval;
        }
        if(advalMin > adval) {
            advalMin = adval;
        }
    } else {
        if(advalMax>advalMin) thres = ( (advalMax+advalMin)/2+100 );
        advalMax = 0x0000;
        advalMin = 0xFFFF;
        int_cnt2 = 0;
    }
}

void printECG(void) {
    putchar(0xFF);
    putchar(0xFF);
    putchar((unsigned char)(adval>>8));
    putchar((unsigned char)adval);
    putchar((unsigned char)(thres>>8));
    putchar((unsigned char)thres);
    putchar((unsigned char)0x00);
    putchar((unsigned char)bpm);
    putchar(bpm);
}

void ECG(void) {
    adval = ADC_ConversionResultGet();
    filter_8p(adval);
    thresAdaptiveControl(adval);
    convBPM(adval);
    printECG();
}