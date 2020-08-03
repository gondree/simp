/* A function for small Fibonacci numbers */

int fibo(void)
{
    static int fibo_p = 0;
    static int fibo_q = 1;
    int new;

    new = fibo_p + fibo_q;
    fibo_p = fibo_q; fibo_q = new;
    return new;
}
