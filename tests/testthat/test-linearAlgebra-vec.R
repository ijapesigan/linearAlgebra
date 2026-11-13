## ---- test-linearAlgebra-vec
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        testthat::expect_equal(
          object = as.vector(x = Vec(x = matrix(data = 1:6, nrow = 2))),
          expected = 1:6
        )
      }
    )
  },
  text = "test-linearAlgebra-vec"
)
