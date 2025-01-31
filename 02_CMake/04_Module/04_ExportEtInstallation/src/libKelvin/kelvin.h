#pragma once

// gestion export/import 
#if defined (_WIN32) // windows
#   if defined(EXPORT_MYLIBKELVIN)
#        define DECLSPEC __declspec(dllexport)
#   else
#       define DECLSPEC  __declspec(dllimport) 
#   endif
#else //not windows
#   define DECLSPEC
#endif

#include <iostream>

const double zDegre = 273.15; 

double DECLSPEC convCelsiusEnKevin(const double tempCelsius); 
void  DECLSPEC printTemperature(const double C, const double K);
