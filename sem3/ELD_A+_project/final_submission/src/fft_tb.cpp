#include "fft.h"

int main(){

    complex_type FFT_output[N];

    complex_type FFT_input[N] = {
        complex_type(11.0, 23.0),
        complex_type(32.0, 10.0),
        complex_type(91.0, 94.0),
        complex_type(15.0, 69.0),
        complex_type(47.0, 96.0),
        complex_type(44.0, 12.0),
        complex_type(96.0, 17.0),
        complex_type(49.0, 58.0)
    };

//	complex_type FFT_input[N] = {
//		complex_type(1.0, 0.0),
//		complex_type(2.0, 0.0),
//		complex_type(3.0, 0.0),
//		complex_type(4.0, 0.0),
//		complex_type(5.0, 1.0),
//		complex_type(6.0, 2.0),
//		complex_type(7.0, 3.0),
//		complex_type(8.0, 4.0)
//	};

    fft_8point(FFT_input, FFT_output);

    for(int i = 0; i < N; i++){
    	if(cabs(FFT_output[i]) - cabs(expected_output[i]) > TOLERANCE){
    		std::cout << "Fail" << "\n";
    		return FAILIURE;
    	}
    }

    std::cout << "\nINPUT: " << "\n\n";
    for(int i = 0; i < N; i++){
    	std::cout << "(" << FFT_input[i].real() << ", " << FFT_input[i].imag() << ")\n";
    }
    std::cout << "\n";

    std::cout << "\nOUTPUT: " << "\n\n";
    for(int i = 0; i < N; i++){
    	std::cout << "(" << FFT_output[i].real() << ", " << FFT_output[i].imag() << ")\n";
    }
    std::cout << "\n";

    std::cout << "PASS" << "\n";
    return SUCCESS;
}

float cabs(complex_type z) {
    return std::sqrt(z.real() * z.real() + z.imag() * z.imag());
}
