OS := $(shell uname -s)
CC= gcc -std=c11 -D_GNU_SOURCE
CFLAGS= -Wall -Wextra -Werror
GREP= s21_grep.c

ifeq ($(OS), Darwin)
	PLATFORM := -lcheck
else
	PLATFORM := -lcheck -lsubunit -lrt -lm -lpthread -g
endif

all: clean s21_grep

s21_grep:
	$(CC) $(CFLAGS) $(GREP) -o s21_grep

test:
	chmod 777 t_grep.sh
	./t_grep.sh

clean:
	rm -rf s21_grep
	rm -rf *.a *.out *.o #*.txt

check:
#	cppcheck --enable=all --suppress=missingIncludeSystem ../../src/
	python3 cpplint.py --extensions=c *.c
#	CK_FORK=no leaks --atExit -- ./s21_grep

rebuild:
	make clean
	make all
	rm -rf  *.o *.a
