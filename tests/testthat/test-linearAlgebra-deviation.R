## ---- test-linearAlgebra-deviation
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        x <- matrix(data = c(1, 2, 3, 4, 6, 8), ncol = 2)
        out <- Deviation(x = x)
        testthat::expect_equal(object = dim(x = out), expected = dim(x = x))
        testthat::expect_equal(
          object = as.vector(x = colMeans(x = out)),
          expected = c(0, 0)
        )
        out <- Deviation(x = c(1, 2, 3))
        testthat::expect_equal(object = dim(x = out), expected = c(3, 1))
        testthat::expect_equal(
          object = as.vector(x = out),
          expected = c(-1, 0, 1)
        )
      }
    )
  },
  text = "test-linearAlgebra-deviation"
)
