## ---- test-linearAlgebra-chol-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "returns NA on failure"),
      code = {
        x <- matrix(data = c(4, 2, 2, 3), nrow = 2)
        testthat::expect_equal(
          object = linearAlgebra:::.Chol(x = x),
          expected = chol(x = x)
        )
        testthat::expect_true(
          object = is.na(x = linearAlgebra:::.Chol(
            x = matrix(data = c(1, 2, 2, 1), nrow = 2)
          ))
        )
        testthat::expect_true(
          object = is.na(x = linearAlgebra:::.Chol(x = matrix(data = "a")))
        )
      }
    )
  },
  text = "test-linearAlgebra-chol-dot"
)
