#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "aoc.h"

static long part1(const char *input) {
    (void)input;
    return 0;
}

static long part2(const char *input) {
    (void)input;
    return 0;
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "usage: %s <input file>\n", argv[0]);
        return 1;
    }

    char *input = read_file(argv[1]);
    if (!input) {
        perror("read_file");
        return 1;
    }

    printf("Part 1: %ld\n", part1(input));
    printf("Part 2: %ld\n", part2(input));

    free(input);
    return 0;
}
