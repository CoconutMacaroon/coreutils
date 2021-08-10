# coreutils

This is my implimentation of some of the GNU coreutils in C.

## Building

To build, run `make`. If something is failing, try `make clean` and then `make` again. `gcc` and `make` both need to be installed.

## TODO

### Done

- `cat`

### In progress

- `more`

## The code

My coreutils has a helper header file for some common functionality. The helper files are `utils.h` and `utils.c`. Each coreutil has its own `.c` file, and, in some cases, it's own header as well. The simaler programs (e.g. `cat`) are just a `.c` file, but the more complex programs (e.g. `more`) have a seperate `.h` file.
