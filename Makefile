CC      = gcc
CFLAGS  = -std=c11 -Wall -Wextra -Wpedantic -g -fsanitize=address,undefined
DAY    ?= 01
BIN     = build/day$(DAY)

.PHONY: run example clean

$(BIN): day$(DAY)/main.c common/aoc.c common/aoc.h
	@mkdir -p build
	$(CC) $(CFLAGS) -Icommon day$(DAY)/main.c common/aoc.c -o $(BIN)

run: $(BIN)
	./$(BIN) day$(DAY)/input.txt

example: $(BIN)
	./$(BIN) day$(DAY)/example.txt

clean:
	rm -rf build