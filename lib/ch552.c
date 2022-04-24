#include <8051.h>
#include "../inc/ch552.h"

void P1_IN(char pins)
{
    P1_MOD_OC = P1_1 | P1_2 | P1_3;
}