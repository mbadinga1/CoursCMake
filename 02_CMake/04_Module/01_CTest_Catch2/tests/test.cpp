#define CATCH_CONFIG_MAIN  // Cette ligne génère la fonction main() pour Catch2

#include <catch2/catch_test_macros.hpp>
#include "kelvin.h"
#include "fahren.h"

TEST_CASE("kelvin")
{
    REQUIRE(convCelsiusEnKevin(0)     == 273.15);
    REQUIRE(convCelsiusEnKevin(1)     == 274.15);
    REQUIRE(convCelsiusEnKevin(26.85) == 300);
    REQUIRE(convCelsiusEnKevin(20)    == 293.15);
}

TEST_CASE("fahren")
{
    REQUIRE(convKelvinEnFahrenheit(0)   == -459.67);
    REQUIRE(convKelvinEnFahrenheit(450) == 350.33);
    REQUIRE(convKelvinEnFahrenheit(1)   == -457.87);
    REQUIRE(convKelvinEnFahrenheit(-1)  == -461.47);
}