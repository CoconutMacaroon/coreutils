utils: utils.c utils.h
	gcc -c utils.c -o out/utils.o
cat: cat.c out/utils.o
	gcc -c cat.c -o out/cat.o
all: utils cat
	gcc out/utils.o out/cat.o -o bin/cat.exe
