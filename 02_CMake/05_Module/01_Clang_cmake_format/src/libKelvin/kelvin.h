#pragma once
// Gestion des import/export selon la plateforme et l'usage
#if defined(_WIN32)
#  if defined(EXPORT_MYLIBKELVIN)
#    define DECLSPEC __declspec(dllexport)
#  else
#    define DECLSPEC __declspec(dllimport)
#  endif
#else // non windows
#  define DECLSPEC
#endif
#include <iostream>

const double zDegre = 273.15; 

double DECLSPEC convCelsiusEnKevin(const double tempCelsius); 
void DECLSPEC printTemperature(const double C, const double K);
