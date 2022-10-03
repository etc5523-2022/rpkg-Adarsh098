test_that("count_by_hours", {
  range <- c("Between 8 and 116 hours",
             "Between 80 and 169 hours",
             "Higher than 150 hours",
             "Less than 70 hours")
  expect_true(count_by_hours(5000) %in% range)
})


test_that("count_by_hours", {
  range <- c("Between 8 and 116 hours",
             "Between 80 and 169 hours",
             "Higher than 150 hours",
             "Less than 70 hours")
  expect_true(count_by_hours(25000) %in% range)
})
