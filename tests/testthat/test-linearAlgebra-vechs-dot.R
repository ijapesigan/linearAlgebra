## ---- test-linearAlgebra-vechs-dot
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
          object = linearAlgebra:::.Vechs(x = x),
          expected = c(2, 3, 5)
        )
        testthat::expect_length(
          object = linearAlgebra:::.Vechs(x = matrix(data = 7)),
          n = 0
        )
      }
    )
  },
  text = "test-linearAlgebra-vechs-dot"
)
