## ---- test-linearAlgebra-vech-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "known values"),
      code = {
        x <- matrix(data = c(1, 2, 3, 2, 4, 5, 3, 5, 6), nrow = 3)
        testthat::expect_equal(
          object = linearAlgebra:::.Vech(x = x),
          expected = c(1, 2, 3, 4, 5, 6)
        )
        testthat::expect_equal(
          object = linearAlgebra:::.Vech(x = matrix(data = 7)),
          expected = 7
        )
      }
    )
  },
  text = "test-linearAlgebra-vech-dot"
)
