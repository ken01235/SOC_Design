#include "fir.h"


void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {	
	// mprj_datlen
	reg_mprj_datlen = N;
	
	// mprj_coeff
	uint32_t reg_mprj_coeff_i;
	/*for(uint32_t i = 0; i<N_tap; i++){
		reg_mprj_coeff_i = reg_mprj_coeff+i*4;
		reg_mprj_coeff_i = taps[i];
	}*/
	
	// int taps[N_tap] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
	reg_mprj_coeff_0 = 1;
	reg_mprj_coeff_1 = -10;
	reg_mprj_coeff_2 = -9;
	reg_mprj_coeff_3 = 23;
	reg_mprj_coeff_4 = 56;
	reg_mprj_coeff_5 = 63;
	reg_mprj_coeff_6 = 56;
	reg_mprj_coeff_7 = 23;
	reg_mprj_coeff_8 = -9;
	reg_mprj_coeff_9 = -10;
	reg_mprj_coeff_10 = 0;
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	initfir();
	
	// ap_start
	reg_mprj_control = 1;
	uint32_t ap_ready_xn, ap_ready_yn;
	
	for(uint32_t i=0; i<N; i=i+1){
		// wait xn ready
		while((reg_mprj_control >> 4) & 1 !=1);
		reg_mprj_x = i+1;
		
		// wait yn ready
		while((reg_mprj_control >> 5) & 1 !=1);
		outputsignal[i] = reg_mprj_y;
	}
	
	// ap_done
	while((reg_mprj_control >> 1) & 1 != 1);
	
	// return last output
	return &outputsignal[N-1];
}
		

