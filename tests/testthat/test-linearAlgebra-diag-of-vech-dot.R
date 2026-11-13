## ---- test-linearAlgebra-diag-of-vech-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "diagonal positions"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.DiagofVech(x = 7, k = 1),
          expected = 7
        )
        testthat::expect_equal(
          object = linearAlgebra:::.DiagofVech(x = 7, k = 1, loc = TRUE),
          expected = 1
        )
        v <- c(1, 2, 3, 4, 5, 6)
        testthat::expect_equal(
          object = linearAlgebra:::.DiagofVech(x = v, k = 3, loc = TRUE),
          expected = c(1, 4, 6)
        )
        testthat::expect_equal(
          object = linearAlgebra:::.DiagofVech(x = v, k = 3),
          expected = c(1, 4, 6)
        )
      }
    )
  },
  text = "test-linearAlgebra-diag-of-vech-dot"
)
