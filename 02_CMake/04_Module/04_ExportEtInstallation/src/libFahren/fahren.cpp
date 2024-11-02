#include "fahren.h"

/*
Formule:  °F = K × 1,8 − cDegre
cDegre = 459,67
*/
double convKelvinEnFahrenheit(const double tempKelvin)
{
    return ((tempKelvin*coeff) - cDegre);
}


void printTemperatureF(const double K, const double F)
{
    std::cout << "Conversion de " << K <<" en F égal à " << F << std::endl; 
}
