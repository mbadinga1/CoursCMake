#pragma once

// Gestion des import/export selon la plateforme et l'usage
#if defined(_WIN32)
#  if defined(EXPORT_MYLIBFAHREN)
#    define DECLSPEC __declspec(dllexport)
#  else
#    define DECLSPEC __declspec(dllimport)
#  endif
#else // non windows
#  define DECLSPEC
#endif

#include <iostream>

const double cDegre = 459.67; 
const double coeff = 1.8; 

double DECLSPEC convKelvinEnFahrenheit(const double tempKelvin); 
void DECLSPEC printTemperatureF(const double K, const double F);