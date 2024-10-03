target: something

something: main.c
	gcc main.c -o main -l SDL2 -Wall -g

run: main
	./main

debug: main
	gdb main
