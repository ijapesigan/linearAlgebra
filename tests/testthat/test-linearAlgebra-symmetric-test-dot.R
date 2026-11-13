## ---- test-linearAlgebra-symmetric-test-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "symmetry"),
      code = {
        testthat::expect_true(
          object = linearAlgebra:::.TestSymmetric(
            x = matrix(data = c(1, 2, 2, 1), nrow = 2)
          )
        )
        testthat::expect_false(
          object = linearAlgebra:::.TestSymmetric(
            x = matrix(data = 1:4, nrow = 2)
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-symmetric-test-dot"
)
