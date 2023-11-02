#include "fir.h"
// fir.h:
//   define N 11
//   taps[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
//   inputbuffer[N];
//   inputsignal[N] = {1,2,3,4,5,6,7,8,9,10,11};
//   outputsignal[N];

void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {
	//initial your fir
}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
    initfir();
    //write down your fir
    int index;

    for (index = 0; index < N; index++) {
        inputbuffer[index] = taps[index] * inputsignal[index];
        outputsignal[index] = inputbuffer[index] + outputsignal[index];
    }

	return outputsignal;
}
		
