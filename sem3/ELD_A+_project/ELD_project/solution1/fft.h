#define N 8

const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};
const float complex W[N/2] = {1-0*I, 0.7071067811865476-0.7071067811865475*I, 0.0-1*I, -0.7071067811865475-0.7071067811865476*I};

void bitreverse(float complex dataIn[N], float complex dataOut[N]);
void FFT_stages (float complex FFT_input[N], float complex FFT_output [N]);
