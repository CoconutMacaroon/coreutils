#include "utils.h"

void printFile(FILE *file) {
    int c;
    while ((c = getc(file)) != EOF && putchar(c))
        ;
}
