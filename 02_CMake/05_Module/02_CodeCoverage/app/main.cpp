#include "fahren.h"
#include "kelvin.h"
#include "version.hpp"

#include <filesystem>
#include <fmt/format.h>

#include <nlohmann/json.hpp>

using json = nlohmann::json;

int main(void) {

  try {

    // fmt
    std::cout << "FMT:" << FMT_VERSION << "\n";
    std::cout << nom_projet << std::endl;
    std::cout << version_projet << std::endl;

    double C = 22.15;
    double K = convCelsiusEnKevin(C);
    printTemperature(C, K);

    double F = convKelvinEnFahrenheit(K);
    printTemperatureF(K, F);
  } catch (const std::exception &e) {
    std::cerr << "exception: " << e.what() << std::endl;
  }

  return EXIT_SUCCESS;
}