// #include "affichage.hpp"
#include<iostream>

#define STB_IMAGE_IMPLEMENTATION

#include "stb_image.h"

int main (void)
{
    // conversion C en K 
    // Formule: K = °C + zDegre
    const double zDegre = 273.15; 
    double C = 22.0; 

    double K =  C + zDegre; 
    // printTemperature(C, K); 


    int width, height, channels;
    unsigned char* img = stbi_load("/mnt/c/Users/mussh/Documents/Perso/CMake/code/CoursCMake/02_CMake/06_Extras/01_headerInterne/src/Data-structure-of-RGB-images.png", &width, &height, &channels, 0);
    
    if (img == nullptr) {
        std::cout << "Error loading image: " << stbi_failure_reason() << std::endl;
        return -1;
    }
    
    std::cout << "Image loaded successfully" << std::endl;
    std::cout << "Width: " << width << std::endl;
    std::cout << "Height: " << height << std::endl;
    std::cout << "Channels: " << channels << std::endl;

    // Here you would typically render the image using a graphics library
    // For this example, we'll just print the first pixel's color values
    if (channels >= 3) {
        std::cout << "First pixel RGB: "
                  << (int)img[0] << ", "
                  << (int)img[1] << ", "
                  << (int)img[2] << std::endl;
    }

    stbi_image_free(img);

    return EXIT_SUCCESS; 

}