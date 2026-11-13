## ---- test-linearAlgebra-positive-definite-test-dot
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
          object = linearAlgebra:::.TestPositiveDefinite(
            eigen = eigen(x = diag(x = 2))
          )
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestPositiveDefinite(
            eigen = list(values = c(2, 0))
          )
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestPositiveDefinite(
            eigen = list(values = c(2, -1))
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-positive-definite-test-dot"
)
