#include "fft.h"

int main(){

	complex_type FFT_output[N];

    complex_type FFT_input[N] = {
        complex_type(1.0, 0.0),
        complex_type(2.0, 0.0),
        complex_type(3.0, 0.0),
        complex_type(4.0, 0.0),
        complex_type(5.0, 1.0),
        complex_type(6.0, 2.0),
        complex_type(7.0, 3.0),
        complex_type(8.0, 4.0)
    };

    fft_8point(FFT_input, FFT_output);

    for(int i = 0; i < N; i++){
    	if(cabs(FFT_output[i]) - cabs(expected_output[i]) > TOLERANCE){
    		std::cout << "Fail" << "\n";
    		return FAILIURE;
    	}
    }

    std::cout << "OUTPUT: " << "\n";
    for(int i = 0; i < N; i++){
    	std::cout << FFT_output[i].real() << " + j * " << FFT_output[i].imag() << "\n";
    }

    std::cout << "PASS" << "\n";
    return SUCCESS;
}
//
//float cabs(complex_type z) {
//    return std::sqrt(z.real() * z.real() + z.imag() * z.imag());
//}
