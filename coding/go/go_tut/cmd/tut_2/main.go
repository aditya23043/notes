package main

import (
	"fmt"
)

func main() {

	/* 
	 * Integer Numbers
	 * int : 32 / 64 bit according to cpu architecture
	 * int8 / int16 / int32 / int64 : different sized ints
	 * uint / uint_ : unsigned int
	*/

	var numVar int;
	fmt.Println(numVar);

	/* 
	 * Floating Point Numbers
	 * There is no direct float data type
	 * we need to specify float32 or float64
	 * float64 offers higher precision at the cost
	 * of higher memory usage
	*/

	var floatVar int;
	fmt.Println(floatVar);

}
