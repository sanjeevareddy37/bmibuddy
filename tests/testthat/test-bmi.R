test_that("BMI calculation is correct", {
  # We know 70kg / 1.75m^2 = 22.857...
  # expect_equal checks if the result matches our expectation within a tiny tolerance
  expect_equal(round(calc_bmi(70, 175), 1), 22.9)
})

test_that("Classification logic works", {
  expect_equal(classify_bmi(18.0), factor("Underweight", levels = c("Underweight", "Normal", "Overweight", "Obese")))
  expect_equal(classify_bmi(30.0), factor("Obese", levels = c("Underweight", "Normal", "Overweight", "Obese")))
})