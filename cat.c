#include <stdio.h>
#include <stdlib.h>

#include "utils.h"

int main(int argc, char *argv[]) {
    if (argc > 1) {
        // start at 1 to not include the program in the list
        for (int i = 1; i < argc; ++i) {
            FILE *fp = fopen(argv[i], "r");
            if(!fp) {
                fprintf(stderr, "cat: %s: No such file or directory", argv[i]);
                exit(1);
            }
            printFile(fp);
        }
    } else {
        forever {
            printFile(stdin);

        }
    }
    return 0;
}
