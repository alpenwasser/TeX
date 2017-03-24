#include<stdio.h>
#include<stdlib.h>

/* Calculates Fibonacci Sequence up to seq_length */

int fib(int);

int main ( int argc, char *argv[] )
{
	if ( argc != 2 )
	{
		printf( "usage: %s <positive integer>\n", argv[0] );
		return 0;
	} else {
		int seq_length;
		int current_elem;
		int current_fib;
		current_elem = -1;
		seq_length = atoi(argv[1]);
		while (seq_length > ++current_elem)
		{
			printf(
				"Fibonacci Number %d is %d\n",
				current_elem + 1,
				fib(current_elem));
		}
		return 0;
	}
}


int fib(int n)
{
	if ( n == 0 )
		return 0;
	else if ( n == 1 )
		return 1;
	else
		return ( fib(n-1) + fib(n-2) );
}
