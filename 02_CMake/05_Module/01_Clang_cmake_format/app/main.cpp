#include "fahren.h"
#include "kelvin.h"
#include "version.hpp"

#include <filesystem>
#include <fmt/format.h>
#include <fstream>

#include "matplotlibcpp.h"
#include <nlohmann/json.hpp>

namespace plt = matplotlibcpp;
using json = nlohmann::json;
namespace fs = std::filesystem;

int main(void) {

  try {
    // choisir le bon path
    std::cout << "Current path is " << fs::current_path()
              << '\n'; // chemin du build
#if defined(__WIN32) || defined(__WIN64)
    fs::current_path(
        fs::current_path().parent_path().parent_path().parent_path());
#elif (__linux__)
    fs::current_path(fs::current_path().parent_path().parent_path());
#endif

    fs::current_path(fs::current_path() / "datas");
    std::cout << "current path is now " << fs::current_path() << "\n";

    // préparation de la donnee
    fs::path fileDataIn = fs::current_path() / "patient.json";
    fs::path fileDataOut = fs::current_path() / "patient_conversion.json";

    std::cout << "File path " << fileDataIn << "\n";
    std::ifstream inFile(fileDataIn);
    if (!inFile) {
      std::cerr << " Impossible d'ouvrir le fichier" << std::endl;
      return 1;
    }

    // parse avec json
    json data = json::parse(inFile);
    inFile.close();
    json outData;

    // vector pour afficher
    std::vector<std::string> dates;
    std::vector<double> tempSick;
    std::vector<double> tempHealth;

    // exploitation des donnees
    for (auto &[day, details] : data.items()) {
      if (details.contains("temperature_healthy") &&
          details.contains("temperature_sick")) {
        double tempH = details["temperature_healthy"];
        double tempS = details["temperature_sick"];

        double tempHConv = convCelsiusEnKevin(tempH);
        double tempSConv = convCelsiusEnKevin(tempS);

        outData[day]["date"] = details["date"];
        outData[day]["temperature_healthy"] = tempH;
        outData[day]["temperature_sick"] = tempS;
        outData[day]["temperature_healthy_kelvin"] = tempHConv;
        outData[day]["temperature_sick_kelvin"] = tempSConv;

        // enregistrement des donnees
        dates.push_back(details["date"]);
        tempHealth.push_back(tempHConv);
        tempSick.push_back(tempSConv);
      }
    }
    // données en sortie
    std::ofstream outFile(fileDataOut);
    if (!outFile) {
      std::cerr << " Impossible d'ouvrir le fichier" << std::endl;
      return 1;
    }
    outFile << outData.dump(4);
    outFile.close();
    std::cout << " Donnees converties " << fileDataOut << std::endl;

    // figure
    plt::figure();
    plt::plot(tempHealth, "b");
    plt::plot(tempSick, "r");
    plt::xlabel("Dates");
    plt::ylabel("Temperature");
    plt::title("Temperature Comparison (Celsius vs Kelvin)");
    plt::legend();
    plt::save("./Temperature_kelvin.png");
    // plt::show();

    // fmt
    std::cout << "FMT:" << FMT_VERSION << "\n";
    std::cout << nom_projet << std::endl;
    std::cout << version_projet << std::endl;

        double C = 22.15;
    double K = convCelsiusEnKevin(C);
       printTemperature(C, K);

    double F = convKelvinEnFahrenheit(K);
        printTemperatureF(K, F);
  }     catch (const std::exception &e) {
    std::cerr << "exception: " << e.what() << std::endl;
  }

      return EXIT_SUCCESS;
}