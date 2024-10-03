target: something

glad: libs/glad.c
	gcc -c libs/glad.c

something: main.c
	gcc main.c -o main glad.o -lglfw -lGL -lGLEW -O3

run: main
	./main
