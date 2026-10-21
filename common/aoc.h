#ifndef AOC_H
#define AOC_H

/* Reads a whole file into a malloc'd string. Caller must free. NULL on error. */
char *read_file(const char *path);

#endif