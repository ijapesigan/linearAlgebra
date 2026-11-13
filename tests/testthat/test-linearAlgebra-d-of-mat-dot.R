## ---- test-linearAlgebra-d-of-mat-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "deviations"),
      code = {
        x <- c(1, 2, 3, 4, 5, 6)
        testthat::expect_equal(
          object = linearAlgebra:::.DofMat(
            x = x,
            center = c(1, 4),
            n = 3,
            k = 2
          ),
          expected = c(0, 1, 2, 0, 1, 2)
        )
      }
    )
  },
  text = "test-linearAlgebra-d-of-mat-dot"
)
