test_that("calc_bmi rejects physiological absurdities (Sad Paths)", {
  
  # Test 1: Negative Height must throw an error
  expect_error(calc_bmi(80, -180), "must be a positive number")
  
  # Test 2: Zero Height must throw an error
  expect_error(calc_bmi(80, 0), "must be a positive number")
  
  # Test 3: Negative Weight must throw an error
  expect_error(calc_bmi(-80, 180), "must be a positive number")
  
  # Test 4: Mixed vector input (one valid, one invalid) must fail
  # This confirms your 'any()' logic works for datasets
  weights <- c(80, 80)
  heights <- c(180, -180) # Second patient has negative height
  expect_error(calc_bmi(weights, heights), "must be a positive number")
})

test_that("calc_bmi works for valid inputs (Happy Path)", {
  # Regression test: Ensure we didn't break the normal math
  expect_equal(round(calc_bmi(80, 180), 1), 24.7)
})