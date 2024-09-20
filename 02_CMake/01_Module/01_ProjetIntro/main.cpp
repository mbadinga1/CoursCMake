#include <iostream>

int main(void)
{

    // conversion degree en kelvin
    // Formule: K = °C + zDegre
    const double zDegre = 273.15; 
    int C = 22; 
    double K = C + zDegre; 

    std::cout << "Conversion de " << C <<"° c en K égal à " << K << std::endl; 

    return EXIT_SUCCESS;
}