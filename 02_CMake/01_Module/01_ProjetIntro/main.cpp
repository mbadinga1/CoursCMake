#include <iostream>


int main (void)
{
    // conversion C en K 
    // Formule: K = °C + zDegre
    const double zDegre = 273.15; 
    double C = 22.0; 

    double K =  C + zDegre; 
    std::cout << "Conversion de " << C <<"° c en K égal à " << K << std::endl; 

    return EXIT_SUCCESS; 

}