## ---- test-linearAlgebra-symof-vechs
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        a <- matrix(data = c(1, 2, 3, 2, 4, 5, 3, 5, 6), ncol = 3)
        testthat::expect_equal(
          object = SymofVechs(x = Vechs(x = a), diags = diag(x = a)),
          expected = a,
          ignore_attr = TRUE
        )
      }
    )
  },
  text = "test-linearAlgebra-symof-vechs"
)
