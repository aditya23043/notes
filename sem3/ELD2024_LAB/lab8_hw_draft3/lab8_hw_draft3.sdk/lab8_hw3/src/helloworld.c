/*
NOTE: This code logic was not coded by me (Aditya Gautam). This code was taken the Lab_8_Part_4: Introduction to Zynq Design Flow: FFT video uploaded by Algorithms to Architecture, ECE, IIITD Delhi
No Infringement intended by me
*/

#include <stdio.h>
#include <stdlib.h>
#include <complex.h>

#define N 8

const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};
const float complex W[N/2] = {1-0*I, 0.7071067811865476-0.7071067811865475*I, 0.0-1*I, -0.7071067811865475-0.7071067811865476*I};
// twiddle factor

void bitreverse(float complex dataIn[N], float complex dataOut[N]){
    bit_reversal:
        for (int i = 0; i < N; i++){
            dataOut[i] = dataIn[rev8[i]];
        }
}

void FFT_stages (float complex FFT_input[N], float complex FFT_output [N]){
    float complex temp1[N], temp2[N];

    stage1:
        for (int i = 0; i < N; i=i+2){
            temp1[i] = FFT_input[i] + FFT_input[i+1];
            temp1[i+1] = FFT_input[i] - FFT_input[i+1];
        }

    stage2:
        for (int i = 0; i < N; i=i+4){
            for (int j = 0; j < 2; ++j){
                temp2[i+j] = temp1[i+j] + W[2*j]*temp1[i+j+2];
                temp2[i+2+j] = temp1[i+j] - W[2*j]*temp1[i+j+2];
            }
        }

    stage3:
        for (int i = 0; i < N / 2; i++) {
            FFT_output[i] = temp2[i] + W[i] * temp2[i + 4];
            FFT_output[i+4] = temp2[i] - W[i]*temp2[i+4];
        }
}

int main(int argc, char** argv) {

  // note: these "I" are provided by complex.h to represent Iota
  const float complex FFT_input[N] = {
    11 + 23 * I,
    32 + 10 * I,
    91 + 94 * I,
    15 + 69 * I,
    47 + 96 * I,
    44 + 12 * I,
    96 + 17 * I,
    49 + 58 * I,
    };

  float complex FFT_output[N];
  float complex FFT_rev[N];

  bitreverse(FFT_input, FFT_rev);
  FFT_stages(FFT_rev, FFT_output);

  printf("\nInput: \n");
  for (int i = 0; i < N; i++) {
      printf("%f %f\n", crealf(FFT_input[i]), cimagf(FFT_input[i]));
  }
  printf("\nOutput: \n");
  for (int i = 0; i < N; i++) {
      printf("%f %f\n", crealf(FFT_output[i]), cimagf(FFT_output[i]));
  }
}
