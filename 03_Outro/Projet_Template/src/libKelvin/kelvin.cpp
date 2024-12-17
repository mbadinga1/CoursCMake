#include "kelvin.h"

/*
Formule: K = °C + zDegre
zDegre = 273,15
*/

/**
 * @brief Conversion Celsius en Kelvin
 * 
 * @param tempCelsius 
 * @return double 
 */
double convCelsiusEnKevin(const double tempCelsius)
{
    return (tempCelsius + zDegre);
}

void printTemperature(const double C, const double K)
{
    std::cout << "Conversion de " << C <<"° c en K égal à " << K << std::endl; 
}

