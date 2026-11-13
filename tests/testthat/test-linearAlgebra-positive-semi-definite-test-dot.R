## ---- test-linearAlgebra-positive-semi-definite-test-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "eigenvalue rule"),
      code = {
        testthat::expect_true(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(2, 1))
          )
        )
        testthat::expect_true(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(2, 0))
          )
        )
        testthat::expect_true(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(0, 0))
          )
        )
        testthat::expect_true(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(2, -1e-08))
          )
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(2, -1e-08)),
            tol = 0
          )
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestPositiveSemiDefinite(
            eigen = list(values = c(2, -1))
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-positive-semi-definite-test-dot"
)
