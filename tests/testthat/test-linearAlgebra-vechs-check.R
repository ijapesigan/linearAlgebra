## ---- test-linearAlgebra-vechs-check
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "checks"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.CheckVechs(x = c(1, 2, 3)),
          expected = 3
        )
        testthat::expect_equal(
          object = linearAlgebra:::.CheckVechs(x = 1, diags = c(1, 1)),
          expected = 2
        )
        testthat::expect_error(object = linearAlgebra:::.CheckVechs(x = 1:2))
        testthat::expect_error(
          object = linearAlgebra:::.CheckVechs(x = 1, diags = 1:3)
        )
        testthat::expect_error(
          object = linearAlgebra:::.CheckVechs(
            x = 1,
            diags = matrix(data = 1:2)
          )
        )
      }
    )
  },
  text = "test-linearAlgebra-vechs-check"
)
