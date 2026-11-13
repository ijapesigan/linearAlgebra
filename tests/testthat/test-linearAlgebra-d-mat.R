## ---- test-linearAlgebra-d-mat
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
        d <- DMat(k = 3)
        testthat::expect_equal(object = dim(x = d), expected = c(9, 6))
        testthat::expect_equal(
          object = as.vector(x = d %*% Vech(x = a)),
          expected = as.vector(x = Vec(x = a))
        )
      }
    )
  },
  text = "test-linearAlgebra-d-mat"
)
