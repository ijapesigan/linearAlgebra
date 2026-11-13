## ---- test-linearAlgebra-symof-vechs-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "round trip"),
      code = {
        x <- matrix(data = c(1, 2, 3, 2, 4, 5, 3, 5, 6), nrow = 3)
        out <- linearAlgebra:::.SymofVechs(
          x = linearAlgebra:::.Vechs(x = x),
          k = 3,
          diags = diag(x = x)
        )
        testthat::expect_equal(object = out, expected = x)
        out <- linearAlgebra:::.SymofVechs(x = 2, k = 2, diags = 1)
        testthat::expect_equal(
          object = out,
          expected = matrix(data = c(1, 2, 2, 1), nrow = 2)
        )
      }
    )
  },
  text = "test-linearAlgebra-symof-vechs-dot"
)
