## ---- test-linearAlgebra-vec-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "known values"),
      code = {
        x <- matrix(data = 1:6, nrow = 2, ncol = 3)
        testthat::expect_equal(
          object = linearAlgebra:::.Vec(x = x),
          expected = 1:6
        )
        testthat::expect_null(object = dim(x = linearAlgebra:::.Vec(x = x)))
      }
    )
  },
  text = "test-linearAlgebra-vec-dot"
)
