## ---- test-linearAlgebra-vech
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
        testthat::expect_equal(
          object = as.vector(x = Vech(x = a)),
          expected = c(1, 2, 3, 4, 5, 6)
        )
      }
    )
  },
  text = "test-linearAlgebra-vech"
)

## ---- test-linearAlgebra-vech-error
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)
    testthat::test_that(
      desc = paste(text, "stops on a non-square matrix or a vector"),
      code = {
        testthat::expect_error(
          object = Vech(x = matrix(data = 1:6, nrow = 2))
        )
        testthat::expect_error(
          object = Vech(x = 1:3)
        )
      }
    )
  },
  text = "test-linearAlgebra-vech-error"
)
