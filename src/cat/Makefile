OS := $(shell uname -s)
CC= gcc -std=c11 -D_GNU_SOURCE
CFLAGS= -Wall -Wextra -Werror
CAT= s21_cat.c

ifeq ($(OS), Darwin)
	PLATFORM := -lcheck
else
	PLATFORM := -lcheck -lsubunit -lrt -lm -lpthread -g
endif

all: clean s21_cat

s21_cat:
	$(CC) $(CFLAGS) $(CAT) -o s21_cat

test:
	chmod 777 t_cat.sh
	./t_cat.sh

clean:
	rm -rf s21_cat
	rm -rf *.a *.out *.o #*.txt

check:
#	cppcheck --enable=all --suppress=missingIncludeSystem ../../src/
	python3 cpplint.py --extensions=c *.c
#	CK_FORK=no leaks --atExit -- ./s21_cat

rebuild:
	make clean
	make all
	rm -rf  *.o *.a
