# 0 "fir.c"
# 1 "/home/ubuntu/SOC_Design/course-lab_4-2/testbench/counter_la_fir//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "fir.c"
# 1 "fir.h" 1


# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 1 3 4
# 11 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 3 4
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 1 3 4
# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4

# 34 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint.h" 2 3 4
# 4 "fir.h" 2
# 1 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdbool.h" 1 3 4
# 5 "fir.h" 2
# 26 "fir.h"

# 26 "fir.h"
int inputbuffer[64];
int outputsignal[64];
# 2 "fir.c" 2


void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {

 (*(volatile uint32_t*)0x30000010) = 64;


 uint32_t reg_mprj_coeff_i;






 (*(volatile uint32_t*)0x30000040) = 1;
 (*(volatile uint32_t*)0x30000044) = -10;
 (*(volatile uint32_t*)0x30000048) = -9;
 (*(volatile uint32_t*)0x3000004C) = 23;
 (*(volatile uint32_t*)0x30000050) = 56;
 (*(volatile uint32_t*)0x30000054) = 63;
 (*(volatile uint32_t*)0x30000058) = 56;
 (*(volatile uint32_t*)0x3000005C) = 23;
 (*(volatile uint32_t*)0x30000060) = -9;
 (*(volatile uint32_t*)0x30000064) = -10;
 (*(volatile uint32_t*)0x30000068) = 0;
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
 initfir();


 (*(volatile uint32_t*)0x30000000) = 1;
 uint32_t ap_ready_xn, ap_ready_yn;

 for(uint32_t i=0; i<64; i=i+1){

  while(((*(volatile uint32_t*)0x30000000) >> 4) & 1 !=1);
  (*(volatile uint32_t*)0x30000080) = i+1;


  while(((*(volatile uint32_t*)0x30000000) >> 5) & 1 !=1);
  outputsignal[i] = (*(volatile uint32_t*)0x30000084);
 }


 while(((*(volatile uint32_t*)0x30000000) >> 1) & 1 != 1);


 return &outputsignal[64 -1];
}
