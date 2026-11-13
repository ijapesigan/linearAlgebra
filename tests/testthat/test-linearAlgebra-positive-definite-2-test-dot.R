## ---- test-linearAlgebra-positive-definite-2-test-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "Cholesky rule"),
      code = {
        testthat::expect_true(
          object = linearAlgebra:::.TestPositiveDefinite2(x = diag(x = 2))
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestPositiveDefinite2(
            x = matrix(data = c(1, 2, 2, 1), nrow = 2)
          )
        )
        # semidefinite: the result is recorded, not asserted either way
        testthat::expect_type(
          object = linearAlgebra:::.TestPositiveDefinite2(
            x = matrix(data = 1, nrow = 2, ncol = 2)
          ),
          type = "logical"
        )
      }
    )
  },
  text = "test-linearAlgebra-positive-definite-2-test-dot"
)
