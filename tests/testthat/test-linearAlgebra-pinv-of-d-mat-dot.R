## ---- test-linearAlgebra-pinv-of-d-mat-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "pseudoinverse"),
      code = {
        for (k in 1:4) {
          d <- linearAlgebra:::.DMat(k = k)
          p <- linearAlgebra:::.PInvDmat(d = d)
          testthat::expect_equal(
            object = p %*% d,
            expected = diag(x = 0.5 * k * (k + 1))
          )
        }
      }
    )
  },
  text = "test-linearAlgebra-pinv-of-d-mat-dot"
)
