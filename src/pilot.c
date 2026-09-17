/* SPDX-License-Identifier: MPL-2.0 */
/* maelys-pilot: a program small enough that its only purpose is to be
 * released. `--version` prints what VERSION says; `greet NAME` greets. */
#include <stdio.h>
#include <string.h>

#ifndef PILOT_VERSION
#define PILOT_VERSION "0.0.0"
#endif

int main(int argc, char **argv) {
    if (argc == 2 && strcmp(argv[1], "--version") == 0) {
        printf("maelys-pilot %s\n", PILOT_VERSION);
        return 0;
    }
    if (argc == 3 && strcmp(argv[1], "greet") == 0) {
        printf("hello, %s\n", argv[2]);
        return 0;
    }
    fprintf(stderr, "usage: maelys-pilot --version | greet NAME\n");
    return 2;
}
