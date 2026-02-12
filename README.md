# bmibuddy

<!-- badges: start -->
<!-- badges: end -->

A minimal R package that calculates Body Mass Index (BMI) from weight (kg) and height (cm), and classifies it into WHO categories.

## Installation

You can install the development version of bmibuddy from GitHub:

``` r
# install.packages("pak")
pak::pak("sanjeevareddy37/bmibuddy")
```

Or using devtools:

``` r
# install.packages("devtools")
devtools::install_github("sanjeevareddy37/bmibuddy")
```

## Usage

``` r
library(bmibuddy)

# Calculate BMI from weight (kg) and height (cm)
calc_bmi(80, 180)
#> [1] 24.69136

# Classify a BMI value using WHO categories
classify_bmi(24.69)
#> [1] Normal
#> Levels: Underweight Normal Overweight Obese

classify_bmi(15)
#> [1] Underweight
#> Levels: Underweight Normal Overweight Obese

classify_bmi(35)
#> [1] Obese
#> Levels: Underweight Normal Overweight Obese
```

## WHO BMI Classification

| BMI Range | Classification |
|-----------|----------------|
| < 18.5 | Underweight |
| 18.5 -- 24.9 | Normal |
| 25.0 -- 29.9 | Overweight |
| >= 30.0 | Obese |

## License

MIT

