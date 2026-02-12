#' Calculate Body Mass Index (BMI)
#'
#' This function takes a weight and height and calculates the raw BMI score.
#'
#' @param weight_kg A number. The weight in kilograms.
#' @param height_cm A number. The height in centimeters.
#' @return A numeric vector containing the BMI.
#' @examples
#' calc_bmi(80, 180)
#' @export
calc_bmi <- function(weight_kg, height_cm) {
  height_m <- height_cm / 100
  bmi <- weight_kg / (height_m ^ 2)
  return(bmi)
}

#' Classify BMI into WHO Categories
#'
#' @param bmi A numeric vector of BMI scores.
#' @return A factor with levels: Underweight, Normal, Overweight, Obese.
#' @examples
#' classify_bmi(24.69)
#' classify_bmi(15)
#' @export
classify_bmi <- function(bmi) {
  category <- cut(
    bmi,
    breaks = c(0, 18.5, 25, 30, Inf),
    labels = c("Underweight", "Normal", "Overweight", "Obese"),
    right = FALSE
  )
  return(category)
}

