## ---- test-linearAlgebra-symof-vech-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "round trip and agreement"),
      code = {
        for (k in 1:4) {
          x <- crossprod(
            x = matrix(data = seq_len(length.out = k * k) + k, nrow = k)
          )
          v <- linearAlgebra:::.Vech(x = x)
          testthat::expect_equal(
            object = linearAlgebra:::.SymofVech(x = v, k = k),
            expected = x
          )
          testthat::expect_equal(
            object = linearAlgebra:::.SymofVech2(
              x = x[upper.tri(x = x, diag = TRUE)],
              k = k
            ),
            expected = x
          )
        }
        v <- c(1, 2, 3, 4, 5, 6)
        testthat::expect_equal(
          object = linearAlgebra:::.SymofVech(x = v, k = 3),
          expected = linearAlgebra:::.SymofVech2(
            x = c(1, 2, 4, 3, 5, 6),
            k = 3
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-symof-vech-dot"
)
