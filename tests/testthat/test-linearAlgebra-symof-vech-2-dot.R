## ---- test-linearAlgebra-symof-vech-2-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "upper triangle fill"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.SymofVech2(x = c(1, 2, 3), k = 2),
          expected = matrix(data = c(1, 2, 2, 3), nrow = 2)
        )
        testthat::expect_equal(
          object = linearAlgebra:::.SymofVech2(x = 5, k = 1),
          expected = matrix(data = 5)
        )
      }
    )
  },
  text = "test-linearAlgebra-symof-vech-2-dot"
)
