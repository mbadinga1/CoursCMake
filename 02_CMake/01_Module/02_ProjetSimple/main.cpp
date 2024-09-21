#include "kelvin.h"

int main (void)
{
    double C = 22.15; 
    double K = convCelsiusEnKevin(C); 
    printTemperature(C, K); 

    return EXIT_SUCCESS; 

}