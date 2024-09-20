
#pragma once

/* Sources formule de conversion
https://fr.wikipedia.org/wiki/Kelvin#:~:text=En%20pratique%20%3A,1%2C8%20%E2%88%92%20459%2C67
*/
#include <iostream>

/*
 Definitions des constantes
*/

const double zDegre = 273.15; 
const double cDegre = 459.67; 
const double coeff = 1.8; 



double convCelsiusEnKevin(const double tempCelsius); 
double convKelvinEnCelsius(const double tempKelvin); 
double convKelvinEnFahrenheit(const double tempKelvin); 
double convFahrenheitEnKelvin(const double tempFahren); 
