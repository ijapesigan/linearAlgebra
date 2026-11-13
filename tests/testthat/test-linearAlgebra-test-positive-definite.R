## ---- test-linearAlgebra-test-positive-definite
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        a <- matrix(data = c(1, 2, 3, 2, 4, 5, 3, 5, 6), ncol = 3)
        testthat::expect_true(object = TestPositiveDefinite(x = diag(x = 2)))
        testthat::expect_false(
          object = TestPositiveDefinite(x = a)
        )
        testthat::expect_false(
          object = TestPositiveDefinite(
            x = matrix(data = c(1, 1, 1, 1), nrow = 2, ncol = 2)
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-test-positive-definite"
)
