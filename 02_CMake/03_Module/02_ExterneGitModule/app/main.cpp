#include "kelvin.h"
#include "fahren.h"
#include "version.hpp"

#include <fstream>
#include <nlohmann/json.hpp>

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>


using json = nlohmann::json;

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

    // opencv 
    cv::Mat image = cv::imread("../ressource/planet.jpg");

    if (image.empty()) {
        std::cerr << "Impossible de lire l'image !" << std::endl;
        return -1;
    }

    // Afficher l'image
    cv::imshow("Image", image);
    cv::waitKey(0);  // Attendre une touche avant de fermer

    std::cout<< nom_projet << std::endl; 
    std::cout<< version_projet << std::endl; 

    double C = 22.15; 
    double K = convCelsiusEnKevin(C); 
    printTemperature(C, K); 

    double F = convKelvinEnFahrenheit(K); 
    printTemperatureF(K, F); 


    return EXIT_SUCCESS; 

}