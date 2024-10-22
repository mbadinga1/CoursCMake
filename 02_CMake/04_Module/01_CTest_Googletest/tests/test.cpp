#include <gtest/gtest.h>
#include "kelvin.h"
#include "fahren.h"

TEST(CelsiusEnKevinTest, ValueTesting)
{
    EXPECT_EQ(convCelsiusEnKevin(0), 273.15);
    EXPECT_EQ(convCelsiusEnKevin(1), 274.15);
    EXPECT_EQ(convCelsiusEnKevin(26.85), 300);
    EXPECT_EQ(convCelsiusEnKevin(20), 293.15);
}

TEST(KelvinEnFahrenheitTest, TestValeur)
{
    EXPECT_EQ(convKelvinEnFahrenheit(0), -459.67);
    EXPECT_EQ(convKelvinEnFahrenheit(450), 350.33);
    EXPECT_EQ(convKelvinEnFahrenheit(1), -457.87);
    EXPECT_EQ(convKelvinEnFahrenheit(-1), -461.47);
}
