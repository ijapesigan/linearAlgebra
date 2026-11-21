## ---- test-linearAlgebra-d-mat-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "duplication matrix"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.DMat(k = 1),
          expected = matrix(data = 1)
        )
        d <- linearAlgebra:::.DMat(k = 2)
        testthat::expect_equal(
          object = d,
          expected = matrix(
            data = c(1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1),
            nrow = 4,
            byrow = TRUE
          )
        )
        x <- matrix(data = c(1, 2, 2, 3), nrow = 2)
        testthat::expect_equal(
          object = as.vector(
            x = linearAlgebra:::.DMat(k = 2) %*% linearAlgebra:::.Vech(x = x)
          ),
          expected = as.vector(x = x)
        )
      }
    )
  },
  text = "test-linearAlgebra-d-mat-dot"
)

## ---- test-linearAlgebra-d-mat-dot-reference
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)
    # the code of linearAlgebra 0.0.4, kept as the reference
    reference <- function(k) {
      sym <- matrix(data = 0, nrow = k, ncol = k)
      q <- seq_len(length.out = 0.5 * k * (k + 1))
      sym[lower.tri(x = sym, diag = TRUE)] <- q
      sym[upper.tri(x = sym)] <- t(x = sym)[upper.tri(x = sym)]
      outer(
        X = as.vector(x = sym),
        Y = q,
        FUN = function(x, y) {
          ifelse(test = x == y, yes = 1, no = 0)
        }
      )
    }
    testthat::test_that(
      desc = paste(text, "equals the 0.0.4 code"),
      code = {
        for (k in 1:8) {
          testthat::expect_identical(
            object = linearAlgebra:::.DMat(k = k),
            expected = reference(k = k)
          )
        }
      }
    )
  },
  text = "test-linearAlgebra-d-mat-dot-reference"
)
