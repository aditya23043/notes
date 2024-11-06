#include <stdio.h>
#include <string.h>

int main(){

	char first_name[25];
	char fullname[25];
	int age;

	printf("Enter your full name: ");
	// scanf("%s", fullname);
	fgets(fullname, 25, stdin);
	// Dont use this after scanf
	// This enters a newline character after the variable value
	// In order to remove it, we need to use a function from the string.h lib
	fullname[strlen(fullname)-1] = '\0';

	printf("Enter your name: ");
	scanf("%s", first_name);

	printf("Enter your age: ");
	scanf("%d", &age);

	printf("Name: %s\n", first_name);
	printf("Full Name: %s\n", fullname);
	printf("Age: %d\n", age);

	return 0;
}
