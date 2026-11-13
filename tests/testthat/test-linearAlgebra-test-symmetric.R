## ---- test-linearAlgebra-test-symmetric
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        testthat::expect_true(object = TestSymmetric(x = diag(x = 2)))
        testthat::expect_false(
          object = TestSymmetric(
            x = matrix(data = c(1, 2, 3, 4), ncol = 2)
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-test-symmetric"
)
