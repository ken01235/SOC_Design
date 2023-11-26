#ifndef __FIR_H__
#define __FIR_H__
#include <stdint.h>
#include <stdbool.h>

#define N 64
#define N_tap 11

#define reg_mprj_control (*(volatile uint32_t*)0x30000000)
#define reg_mprj_datlen (*(volatile uint32_t*)0x30000010)
#define reg_mprj_coeff_0 (*(volatile uint32_t*)0x30000040)
#define reg_mprj_coeff_1 (*(volatile uint32_t*)0x30000044)
#define reg_mprj_coeff_2 (*(volatile uint32_t*)0x30000048)
#define reg_mprj_coeff_3 (*(volatile uint32_t*)0x3000004C)
#define reg_mprj_coeff_4 (*(volatile uint32_t*)0x30000050)
#define reg_mprj_coeff_5 (*(volatile uint32_t*)0x30000054)
#define reg_mprj_coeff_6 (*(volatile uint32_t*)0x30000058)
#define reg_mprj_coeff_7 (*(volatile uint32_t*)0x3000005C)
#define reg_mprj_coeff_8 (*(volatile uint32_t*)0x30000060)
#define reg_mprj_coeff_9 (*(volatile uint32_t*)0x30000064)
#define reg_mprj_coeff_10 (*(volatile uint32_t*)0x30000068)
#define reg_mprj_x (*(volatile uint32_t*)0x30000080)
#define reg_mprj_y (*(volatile uint32_t*)0x30000084)


int inputbuffer[N];
int outputsignal[N];
#endif
