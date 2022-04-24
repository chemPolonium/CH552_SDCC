#include <8051.h>
#include "../inc/ch552.h"

void delay(unsigned int a)
{
    unsigned int i, j, k;
    for (i = 0; i < a; i++)
        for (j = 0; j < a; j++)
            for (k = 0; k < a; k++)
                ;
}

void main()
{
    P1_MOD_OC = 1;
    P1_1 = 1;
    P1 = 1;

    delay(10);
    
    while (1)
    {
        ;
    }
}