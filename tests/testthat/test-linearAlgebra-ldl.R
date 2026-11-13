## ---- test-linearAlgebra-ldl
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "reconstructs x"),
      code = {
        for (x in list(
          matrix(data = 4, nrow = 1, ncol = 1),
          matrix(data = c(4, 2, 2, 3), nrow = 2, ncol = 2)
        )) {
          out <- linearAlgebra:::.LDL(x = x)
          testthat::expect_equal(
            object = out$L %*% out$D %*% t(x = out$L),
            expected = x
          )
          testthat::expect_equal(
            object = dim(x = out$D),
            expected = dim(x = x)
          )
        }
      }
    )
  },
  text = "test-linearAlgebra-ldl"
)
