utils: utils.c utils.h
	gcc -c utils.c -o utils.o
cat: cat.c utils.o
	gcc -c cat.c -o cat.o
all: utils cat
	gcc utils.o cat.o -o cat.exe
	