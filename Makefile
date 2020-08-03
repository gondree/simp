CC      = gcc
CFLAGS  = -Wall
VPATH += src
BINS = simp

.PHONY: all clean

all: $(BINS)

clean:
	rm -f *.o *.s *.i $(BINS)

#
# Rules for BINS
#
simp: fibo.o cube.o square.o sum.o
	$(CC) simp.c $^ -o $@

#
# Rules for Object files
#

cube.o: cube.c
square.o: square.c
sum.o: sum.c
fibo.o: fibo.c

