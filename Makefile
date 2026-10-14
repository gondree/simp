CC      = gcc
CFLAGS  = -std=c11 -O0 -g -Wall -I.
OBJS = simp.o fibo.o cube.o square.o sum.o
BINS = simp simp-static

.PHONY: all clean

all: $(BINS)


#
# Rules for BINS
#
simp: $(OBJS)
	$(CC) $^ -o $@

simp-static: $(OBJS)
	$(CC) -static $^ -o $@

#
# Rules for Object files
#

simp.o: simp.c simp.h
	$(CC) $(CFLAGS) -c $< -o $@

cube.o: src/cube.c
	$(CC) $(CFLAGS) -c $< -o $@

square.o: src/square.c simp.h
	$(CC) $(CFLAGS) -c $< -o $@

sum.o: src/sum.c
	$(CC) $(CFLAGS) -c $< -o $@

fibo.o: src/fibo.c
	$(CC) $(CFLAGS) -c $< -o $@

#
# Remove built files
#
clean:
	rm -f *.o *.s *.i $(BINS) simp simp-static a.out
