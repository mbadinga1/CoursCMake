#include "kelvin.h"
#include "fahren.h"
#include "version.hpp"

#include <fstream>
#include <fmt/format.h>

#include <nlohmann/json.hpp>
using json = nlohmann::json;

typedef struct 
{
    int age; 
    int sexe; 
    std::string name; 
    
} personne;


int main (void)
{
    json j2 = {
    {"pi", 3.141},
    {"happy", true},
    {"name", "Niels"},
    {"nothing", nullptr},
    {"answer", {
        {"everything", 42}
    }},
    {"list", {1, 0, 2}},
    {"object", {
        {"currency", "USD"},
        {"value", 42.99}
    }}
    };
    std::ofstream o("pretty.json");
    o << std::setw(4) << j2 << std::endl;

    personne Mike = {19, 0}; 
    int p; 
    // fmt
    std::cout << "FMT:" << FMT_VERSION << "\n";

    std::cout<< nom_projet << std::endl; 
    std::cout<< version_projet << std::endl; 

    double C = 22.15; 
    double K = convCelsiusEnKevin(C); 
    printTemperature(C, K); 

    double F = convKelvinEnFahrenheit(K); 
    printTemperatureF(K, F); 
    
    
    return EXIT_SUCCESS; 

}