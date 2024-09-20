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

/*
Formule:  °F = K × 1,8 − cDegre
cDegre = 459,67
*/
double convKelvinEnFahrenheit(const double tempKelvin)
{
    return ((tempKelvin*coeff) - cDegre);
}

/*
Formule:  K = (°F + cDegre) / 1,8
cDegre = 459,67
*/
double convFahrenheitEnKelvin(const double tempFahren)
{
    return ((tempFahren + cDegre) / coeff);
}


/*
Pour les deux il faut passer par kelvin ! peut être faire des
appels de functions
*/
// double convCelsiusEnFahrenheit()
// {

// }

// double convFahrenheitEnCelsius()
// {

// }