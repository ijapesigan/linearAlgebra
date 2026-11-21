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

## ---- test-linearAlgebra-pinv-of-d-mat-dot-reference
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)
    testthat::test_that(
      desc = paste(text, "equals the 0.0.4 code and recovers vech"),
      code = {
        for (k in 1:8) {
          d <- linearAlgebra:::.DMat(k = k)
          testthat::expect_equal(
            object = linearAlgebra:::.PInvDmat(d = d),
            expected = tcrossprod(
              x = chol2inv(x = chol(x = crossprod(x = d))),
              y = d
            ),
            tolerance = 1e-12
          )
          x <- crossprod(
            x = matrix(data = seq_len(length.out = k * k), nrow = k)
          )
          testthat::expect_equal(
            object = as.vector(
              x = linearAlgebra:::.PInvDmat(d = d) %*% as.vector(x = x)
            ),
            expected = linearAlgebra:::.Vech(x = x)
          )
        }
      }
    )
  },
  text = "test-linearAlgebra-pinv-of-d-mat-dot-reference"
)
