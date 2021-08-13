all: utils cat more
	gcc out/utils.o out/cat.o -o bin/cat.exe
	gcc out/utils.o out/more.o -o bin/more.exe

utils: utils.c utils.h
	gcc -c utils.c -o out/utils.o

cat: cat.c out/utils.o
	gcc -c cat.c -o out/cat.o

more: more.c more.h out/utils.o
	gcc -c more.c -o out/more.o

.PHONY: clean
clean:
	rm -f 'bin/'*.exe ; rm -f 'out/'*.o

#            +-------+
#     +----> | utils | <---+
#     |      +-------+     |
#     |                    |
#  +-----+              +------+
#  | cat |              | more |
#  +-----+              +------+

