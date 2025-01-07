#include <stdio.h>

int main(int argc, char *argv[]){

    printf("Enter your name: ");
    char name[20];
    fgets(name, sizeof(name), stdin);

    printf("%s", name);
    size_t something = 20;

    char _name[20] = "Aditya Gautam";
    _name[3] = '\0';
    printf("%s", _name);

    fputs("Error!\n", stderr);


}
