## ---- test-linearAlgebra-test-positive-semi-definite
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "identities"),
      code = {
        ones <- matrix(data = 1, nrow = 2, ncol = 2)
        zeros <- matrix(data = 0, nrow = 2, ncol = 2)
        indefinite <- matrix(data = c(1, 2, 3, 2, 4, 5, 3, 5, 6), ncol = 3)
        testthat::expect_true(
          object = TestPositiveSemiDefinite(x = diag(x = 2))
        )
        testthat::expect_true(object = TestPositiveSemiDefinite(x = ones))
        testthat::expect_true(object = TestPositiveSemiDefinite(x = zeros))
        testthat::expect_true(
          object = TestPositiveSemiDefinite(x = matrix(data = 3))
        )
        testthat::expect_false(
          object = TestPositiveSemiDefinite(x = indefinite)
        )
        testthat::expect_false(
          object = TestPositiveSemiDefinite(x = -diag(x = 2))
        )
      }
    )

    testthat::test_that(
      desc = paste(text, "differs from TestPositiveDefinite on semidefinite"),
      code = {
        ones <- matrix(data = 1, nrow = 2, ncol = 2)
        pd <- matrix(data = c(4, 2, 2, 3), nrow = 2)
        testthat::expect_true(object = TestPositiveSemiDefinite(x = ones))
        testthat::expect_false(object = TestPositiveDefinite(x = ones))
        testthat::expect_true(object = TestPositiveSemiDefinite(x = pd))
        testthat::expect_true(object = TestPositiveDefinite(x = pd))
      }
    )

    testthat::test_that(
      desc = paste(text, "errors on a non-symmetric matrix"),
      code = {
        testthat::expect_error(
          object = TestPositiveSemiDefinite(x = matrix(data = 1:4, nrow = 2))
        )
      }
    )
  },
  text = "test-linearAlgebra-test-positive-semi-definite"
)
