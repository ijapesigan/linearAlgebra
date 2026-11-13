## ---- test-linearAlgebra-vech-check
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "checks"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.CheckVech(x = c(1, 2, 3)),
          expected = 2
        )
        testthat::expect_equal(
          object = linearAlgebra:::.CheckVech(x = 1),
          expected = 1
        )
        testthat::expect_error(object = linearAlgebra:::.CheckVech(x = 1:2))
        testthat::expect_error(
          object = linearAlgebra:::.CheckVech(x = matrix(data = 1:3))
        )
      }
    )
  },
  text = "test-linearAlgebra-vech-check"
)
