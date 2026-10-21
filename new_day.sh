#!/usr/bin/env bash
set -e
day=$(printf "%02d" "$1")
dir="day$day"

if [ -e "$dir" ]; then echo "$dir already exists"; exit 1; fi

mkdir "$dir"
touch "$dir/example.txt" "$dir/input.txt"

cat > "$dir/main.c" <<'EOF'
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
EOF

echo "Created $dir"