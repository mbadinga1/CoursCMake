#include "kelvin.h"
#include "fahren.h"
#include "version.hpp"

int main (void)
{
    std::cout<< nom_projet << std::endl; 
    std::cout<< version_projet << std::endl; 

    double C = 22.15; 
    double K = convCelsiusEnKevin(C); 
    printTemperature(C, K); 

    double F = convKelvinEnFahrenheit(K); 
    printTemperatureF(K, F); 


    return EXIT_SUCCESS; 

}