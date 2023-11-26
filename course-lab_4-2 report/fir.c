#include "fir.h"


void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {	
	// mprj_datlen
	reg_mprj_datlen = N;
	
	// mprj_coeff
	uint32_t reg_mprj_coeff_i;
	for(uint32_t i = 0; i<N_tap; i++){
		reg_mprj_coeff_i = reg_mprj_coeff+i*4;
		reg_mprj_coeff_i = taps[i];
	}
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	initfir();
	
	// ap_start
	reg_mprj_control = 1;
	uint32_t ap_ready_xn, ap_ready_yn;
	
	for(uint32_t i=0; i<N; i=i+1){
		// wait xn ready
		ap_ready_xn = (reg_mprj_control >> 4) & 1;
		while(~ap_ready_xn);
		reg_mprj_x = i;
		
		// wait yn ready
		ap_ready_yn = (reg_mprj_control >> 5) & 1;
		while(~ap_ready_yn);
		outputsignal[i] = reg_mprj_y;
	}
	
	// ap_done
	while((reg_mprj_control >> 1) & 1 != 1);
	
	// return last output
	return &outputsignal[N-1];
}
		

