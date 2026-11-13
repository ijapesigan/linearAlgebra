## ---- test-linearAlgebra-d-of-vec-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "deviations"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.DofVec(x = c(3, 4), center = c(1, 1)),
          expected = matrix(data = c(2, 3), ncol = 1)
        )
        testthat::expect_equal(
          object = linearAlgebra:::.DofVec(
            x = c(3, 4),
            center = c(1, 1),
            mat = FALSE
          ),
          expected = c(2, 3)
        )
      }
    )
  },
  text = "test-linearAlgebra-d-of-vec-dot"
)
