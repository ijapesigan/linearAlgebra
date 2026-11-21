## ---- test-linearAlgebra-vechs
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
          object = as.vector(x = Vechs(x = a)),
          expected = c(2, 3, 5)
        )
      }
    )
  },
  text = "test-linearAlgebra-vechs"
)

## ---- test-linearAlgebra-vechs-error
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
          object = Vechs(x = matrix(data = 1:6, nrow = 2))
        )
        testthat::expect_error(
          object = Vechs(x = 1:3)
        )
      }
    )
  },
  text = "test-linearAlgebra-vechs-error"
)
