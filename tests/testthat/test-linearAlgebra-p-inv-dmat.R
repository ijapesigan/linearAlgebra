## ---- test-linearAlgebra-p-inv-dmat
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        d <- DMat(k = 3)
        pinv <- PInvDmat(k = 3)
        testthat::expect_equal(object = dim(x = pinv), expected = c(6, 9))
        testthat::expect_equal(
          object = pinv %*% d,
          expected = diag(x = 6),
          ignore_attr = TRUE
        )
      }
    )
  },
  text = "test-linearAlgebra-p-inv-dmat"
)
