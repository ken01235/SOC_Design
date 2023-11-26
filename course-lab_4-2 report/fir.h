#ifndef __FIR_H__
#define __FIR_H__
#include <stdint.h>
#include <stdbool.h>

#define N 64
#define N_tap 11

#define reg_mprj_control (*(volatile uint32_t*)0x30000000)
#define reg_mprj_datlen (*(volatile uint32_t*)0x30000010)
#define reg_mprj_coeff (*(volatile uint32_t*)0x30000040)
#define reg_mprj_x (*(volatile uint32_t*)0x30000080)
#define reg_mprj_y (*(volatile uint32_t*)0x30000084)

int taps[N_tap] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int inputbuffer[N];
int outputsignal[N];
#endif
