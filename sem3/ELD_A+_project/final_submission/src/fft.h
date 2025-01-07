#pragma once
#include <complex>
#include <iostream>

#define N 8
#define SUCCESS 0
#define FAILIURE 1
#define TOLERANCE 0.001

typedef std::complex<float> complex_type;

const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};
const complex_type W[N/2] = {
    complex_type(1.0, 0.0),
    complex_type(0.7071067811865476, -0.7071067811865475),
    complex_type(0.0, -1.0),
    complex_type(-0.7071067811865475, -0.7071067811865476)
};

const complex_type expected_output[N] = {
	complex_type(385.000000, 379.000000),
	complex_type(62.920310, -44.665476),
	complex_type(-234.000000, -4.000000),
	complex_type(-122.192388, -36.280700),
	complex_type(105.000000, 81.000000),
	complex_type(19.079690, -91.334524),
	complex_type(-24.000000, 20.000000),
	complex_type(-103.807612, -119.719300),
};

float cabs(complex_type z);
void bitreverse(complex_type dataIn[N], complex_type dataOut[N]);
void FFT_stages(complex_type FFT_input[N], complex_type FFT_output[N]);
void fft_8point(complex_type FFT_input[N], complex_type FFT_output[N]);
