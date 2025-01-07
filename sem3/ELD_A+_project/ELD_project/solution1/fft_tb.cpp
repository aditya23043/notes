#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include "fft.cpp"

#define SUCCESS 0
#define FAILURE -1
#define TOLERANCE 0.001

int main(int argc, char** argv) {

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

  FFT(FFT_input, FFT_output);

  const float complex expected_output[N] = {
    385.000000 + 379.000000 * I,
    62.920310 + -44.665476 * I,
    -234.000000 + -4.000000 * I,
    -122.192388 + -36.280700 * I,
    105.000000 + 81.000000 * I,
    19.079690 + -91.334524 * I,
    -24.000000 + 20.000000 * I,
    -103.807612 + -119.719300 * I,
  };

  int j;

  for (j = 0; j < N; j++) {
    if (cabs(FFT_output[j] - expected_output[j]) > TOLERANCE) {
      return FAILURE;
    }
  }

  return SUCCESS;
}
