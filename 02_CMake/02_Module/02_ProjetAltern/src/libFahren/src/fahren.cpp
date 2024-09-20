#include "conversion.h"

/*
Formule: K = °C + zDegre
zDegre = 273,15
*/
double convCelsiusEnKevin(const double tempCelsius)
{
    return (tempCelsius - zDegre);
}

/*
Formule:  °C = K − zDegre
zDegre = 273,15
*/
double convKelvinEnCelsius(const double tempKelvin)
{
    return (tempKelvin - zDegre);
}