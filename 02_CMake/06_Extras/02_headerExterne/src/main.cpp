
#include <fstream>
#include <filesystem>
#include <iostream>
#include "matplotlibcpp.h"

namespace plt = matplotlibcpp;
namespace fs = std::filesystem; 

int main (void)
{

    try{
       
        // vector pour afficher 
        std::vector<double> tempSick {39.8, 40.2, 40.0, 39.6, 40.3, 40.5, 39.9}; 
        std::vector<double> tempHealth{36.6, 36.7, 36.5, 36.8, 36.9, 36.6, 36.7};

        // figure 
        plt::figure();
        plt::plot(tempHealth, "b");
        plt::plot(tempSick, "r");
        plt::xlabel("Dates");
        plt::ylabel("Temperature");
        plt::title("Temperature Comparison (Celsius vs Kelvin)");
        plt::legend();
        plt::save("./Temperature_patient.png");

    }
    catch(const std::exception& e){
        std::cerr  << "exception: " << e.what() << std::endl; 
    }
    
    return EXIT_SUCCESS; 

}