#include "fir.h"
// fir.h:
//   define N 11
//   taps[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
//   inputbuffer[N];
//   inputsignal[N] = {1,2,3,4,5,6,7,8,9,10,11};
//   outputsignal[N];

#include "fir.h"

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	//initial your fir
	for(int i=0; i<N; i=i+1){
		inputbuffer[i] = 0;
		outputsignal[i] = 0;
	}
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
	initfir();
	//write down your fir
	for(int t=0; t<N; t=t+1){
		inputbuffer[t] = inputsignal[t];
		for(int i=0; i<t+1; i=i+1){
			outputsignal[t] += taps[i] * inputbuffer[t-i];
		}
	}
	return outputsignal;
}

