# 0 "fir.c"
# 1 "/home/ubuntu/SOC_Design/course-lab_4-1/testbench/counter_la_fir//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "fir.c"
# 1 "fir.h" 1





int taps[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
int inputbuffer[11];
int inputsignal[11] = {1,2,3,4,5,6,7,8,9,10,11};
int outputsignal[11];
# 2 "fir.c" 2







void __attribute__ ( ( section ( ".mprjram" ) ) ) initfir() {

}

int* __attribute__ ( ( section ( ".mprjram" ) ) ) fir(){
    initfir();

    int index;

    for (index = 0; index < 11; index++) {
        inputbuffer[index] = taps[index] * inputsignal[index];
        outputsignal[index] = inputbuffer[index] + outputsignal[index];
    }

 return outputsignal;
}
