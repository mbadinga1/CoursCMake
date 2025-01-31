#include "kelvin.h"
 #include "fahren.h"


int main (void)
{
    // conversion C en K 
    double C = 22.15; 
    double K =  convCelsiusEnKevin(C);
    printTemperature(C, K); 

    double F = convKelvinEnFahrenheit(K); 
    printTemperatureF(K, F); 
    return EXIT_SUCCESS; 

}