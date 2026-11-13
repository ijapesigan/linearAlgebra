## ---- test-linearAlgebra-d-mat-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "duplication matrix"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.DMat(k = 1),
          expected = matrix(data = 1)
        )
        d <- linearAlgebra:::.DMat(k = 2)
        testthat::expect_equal(
          object = d,
          expected = matrix(
            data = c(1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1),
            nrow = 4,
            byrow = TRUE
          )
        )
        x <- matrix(data = c(1, 2, 2, 3), nrow = 2)
        testthat::expect_equal(
          object = as.vector(
            x = linearAlgebra:::.DMat(k = 2) %*% linearAlgebra:::.Vech(x = x)
          ),
          expected = as.vector(x = x)
        )
      }
    )
  },
  text = "test-linearAlgebra-d-mat-dot"
)
