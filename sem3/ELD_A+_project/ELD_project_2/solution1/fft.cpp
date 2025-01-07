#include "fft.h"

void bitreverse(complex_type dataIn[N], complex_type dataOut[N]) {
    for (int i = 0; i < N; i++) {
        dataOut[i] = dataIn[rev8[i]];
    }
}

void FFT_stages(complex_type FFT_input[N], complex_type FFT_output[N]) {
    complex_type temp1[N], temp2[N];

    stage1:
    for (int i = 0; i < N; i=i+2) {
        temp1[i] = FFT_input[i] + FFT_input[i+1];
        temp1[i+1] = FFT_input[i] - FFT_input[i+1];
    }

    stage2:
    for (int i = 0; i < N; i=i+4) {
        for (int j = 0; j < 2; ++j) {
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

void fft_8point(complex_type FFT_input[N], complex_type FFT_output[N]) {

	complex_type FFT_rev[N];

    bitreverse(FFT_input, FFT_rev);
    FFT_stages(FFT_rev, FFT_output);
}
