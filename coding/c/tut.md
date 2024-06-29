# C Tutorial

## Variables

```c
#include <stdio.h>
#include <stdbool.h>

int main(){

	int age = 19;			// integer
	float gpa = 7.3;		// decimal
	char grade = 'B';		// char
	char name[] = "Aditya Gautam";	// string
	bool something = false;	// bool

	printf("Hello %s!\n", name);
	printf("You are %d years old\n", age);
	printf("Demn bruh, you got a %c\n", grade);
	printf("GPA: %f\n", gpa);
	printf("%d", something);
	// % : formatter
	// d : integer
	// s : char array => string
	// c : char
	// f : floating point

	/*
	 * char => %c
	 * char arr => %s
	 * float : 4 bytes (32 bits precision) 6-7 digits => %f
	 * double : 8 bytes (64 bits precision) 15-16 digits => %lf
	 * bool (require stdbool.h) : 1 byte => %d
	 * char : 1 byte (-128 to 127) => %d / %c
	 * unsigned char : 1 byte (0 to 255) => %d / %c
	 * short int : 2 bytes => %d
	 * unsigned short int : 2 bytes => %d
	 * int : 4 bytes => %d
	 * unsigned int : 4 bytes => %u
	 * long long int : 8 bytes => %lld
	 * unsigned long long int : 8 bytes => %llu
	 */

	// NOTE: int means => long int

	return 0;
}
```

## Formatting

```c
#include <stdio.h>

int main(){

	/*
	 * %c : char
	 * %s : string
	 * %f : float
	 * %lf : double
	 * %d : int
	 */

	/*
	 * %.1 : decimal precision
	 * %1 : minimum field width
	 * %- : left align
	 */

	float item1 = 5.75;
	float item2 = 10.00;
	float item3 = 100.99;

	printf("item 1 : $%8.2f\n", item1);
	printf("item 2 : $%8.2f\n", item2);
	printf("item 3 : $%8.2f\n", item3);

	return 0;
}
```

## Const

```c
#include <stdio.h>

int main() {

  const float PI = 3.14159;
  // constant values cannot be changed after declaration
  // naming convention : all letters => uppercase

  // Error
  // PI = 5;

  printf("%d\n", PI);

  return 0;
}
```

## Operators

| Operation      | Symbol |
| -------------- | ------ |
| Addition       | +      |
| Subtraction    | -      |
| Multiplication | \*     |
| Division       | /      |
| Modulus        | %      |
| Increment      | ++     |
| Decrement      | --     |

## Int Division vs Float Division

- Integer Division

```c
#include <stdio.h>

int main(){
    int x = 12;
    int y = 5;
    int y = x / y;
}
```

- Float Division

```c
#include <stdio.h>

int main(){
    int x = 12;
    int y = 5;
    int y = x / (int)y;
}
```

> Make any one or both of the operators float explicitly
