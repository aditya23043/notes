#include "dma_init.h"
#include "platform.h"
#include "xaxidma.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <complex.h>
#include <stdio.h>
#include <stdlib.h>
#include <xtime_l.h>

#define N 8

const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};
const float complex W[N / 2] = {
    1 - 0 * I, 0.7071067811865476 - 0.7071067811865475 * I, 0.0 - 1 * I,
    -0.7071067811865476 - 0.7071067811865475 * I};

void bitreverse(float complex dataIn[N], float complex dataOut[N]) {
bit_reversal:
    for (int i = 0; i < N; i++) {
        dataOut[i] = dataIn[rev8[i]];
    }
}

void FFT_stages(float complex FFT_input[N], float complex FFT_output[N]) {
    float complex temp1[N], temp2[N];

stage1:
    for (int i = 0; i < N; i = i + 2) {
        temp1[i] = FFT_input[i] + FFT_input[i + 1];
        temp1[i + 1] = FFT_input[i] - FFT_input[i + 1];
    }

stage2:
    for (int i = 0; i < N; i = i + 4) {
        for (int j = 0; j < 2; ++j) {
            temp2[i + j] = temp1[i + j] + W[2 * j] * temp1[i + j + 2];
            temp2[i + 2 + j] = temp1[i + j] - W[2 * j] * temp1[i + j + 2];
        }
    }

stage3:
    for (int i = 0; i < N / 2; i = i + 1) {
        FFT_output[i] = temp2[i] + W[i] * temp2[i + 4];
        FFT_output[i + 4] = temp2[i] - W[i] * temp2[i + 4];
    }
    for (int i = 0; i < N; i = i + 1) {
        FFT_output[i] = 1 / crealf(FFT_output[i]) + I * 1 / cimagf(FFT_output[i]);
    }
}

int main() {

    // INIT

    init_platform();

    XTime PL_start_time, PL_end_time;
    XTime PS_start_time, PS_end_time;

    const float complex FFT_input[N] = {11 + 23 * I, 32 + 10 * I, 91 + 94 * I,
        15 + 69 * I, 47 + 96 * I, 44 + 12 * I,
        96 + 17 * I, 49 + 58 * I};
    float complex FFT_output_sw[N], FFT_output_hw[N];
    float complex FFT_rev_sw[N];

    XTime_SetTime(0);
    XTime_GetTime(&PS_start_time);

    // FFT
    bitreverse(FFT_input, FFT_rev_sw);
    FFT_stages(FFT_rev_sw, FFT_output_sw);

    XTime_GetTime(&PS_end_time);

    // DMA CONFIG

    XAxiDma AxiDMA;
    int status;

    status = DMA_Init(&AxiDMA, XPAR_AXI_DMA_0_DEVICE_ID);

    XTime_SetTime(0);
    XTime_GetTime(&PL_start_time);

    XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_output_hw,
            sizeof(float complex) * N,
            XAXIDMA_DEVICE_TO_DMA); // fft -> dma
    XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_input, sizeof(float complex) * N,
            XAXIDMA_DMA_TO_DEVICE); // dma -> fft

    while (XAxiDma_Busy(&AxiDMA, XAXIDMA_DMA_TO_DEVICE))
        ;
    while (XAxiDma_Busy(&AxiDMA, XAXIDMA_DEVICE_TO_DMA))
        ;

    XTime_GetTime(&PL_end_time);

    // PRINTING OUTPUT

    for (int i = 0; i < N; i++) {

        printf("\n\rPS Output- %f+%fI, PL Output- %f+%fI",
             crealf(FFT_output_sw[i]), cimagf(FFT_output_sw[i]),
             crealf(FFT_output_hw[i]), cimagf(FFT_output_hw[i]));

        float diff1 = abs(crealf(FFT_output_sw[i]) - crealf(FFT_output_hw[i]));
        float diff2 = abs(cimagf(FFT_output_sw[i]) - cimagf(FFT_output_hw[i]));

        if (diff1 >= 0.0001 && diff2 >= 0.0001) {
            printf("\n\rData Mismatch found at index %d !", i);
        } else
            printf("DMA Transfer Successful!");
    }

    printf("\n\r------- Execution Time Comparison --------");
    float time = 0;
    time = (float)1.0 * (PS_end_time - PS_start_time) /
        (COUNTS_PER_SECOND / 1000000);
    printf("\n\rExecution time for PS in Micro-seconds: %f", time);

    return 0;
}
