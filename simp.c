#include <stdio.h>
#include "simp.h"

/* define macro */
#define number_nine 9

/* global */
int a_global = 11;

/* global and static */
static int b_global_init = 2;

/* extern, a global from another file */
extern int c_global_init;

/* A very simple program */
int main(int argc, char *argv[])
{
    const char *message = "Hello, world!";
    static int d_static_local = number_nine;
    int i;

    printf("%s\n", message);
    printf("a + b = %i\n", fn_sum(a_global, b_global_init));
    printf("b^2   = %i\n", fn_square(b_global_init));
    printf("a^3   = %i\n", fn_cube(a_global));
    printf("c * d = %i\n", fn_prod(c_global_init, d_static_local));

    // print the first few Fibonacci numbers
    for (i = 0; i < d_static_local; i++) {
	int fib_int_local = fibo();
        printf("fib(%i)  = %i\n", i, fib_int_local);
    }

}
