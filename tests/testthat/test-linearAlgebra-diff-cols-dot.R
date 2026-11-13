## ---- test-linearAlgebra-diff-cols-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, ".DiffCols agrees with R"),
      code = {
        x <- matrix(data = c(1, 5, 3, 2, 4, 7, 9, 1, 6, 8, 2, 0), nrow = 4)
        out <- linearAlgebra:::.DiffCols(x = x)
        testthat::expect_equal(
          object = out[, 1],
          expected = x[, 1] - x[, 2]
        )
        testthat::expect_equal(object = dim(x = out), expected = c(4, 3))
        testthat::expect_equal(
          object = out,
          expected = cbind(x[, 1] - x[, 2], x[, 1] - x[, 3], x[, 2] - x[, 3])
        )
      }
    )
  },
  text = "test-linearAlgebra-diff-cols-dot"
)
