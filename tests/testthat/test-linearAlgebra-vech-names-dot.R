## ---- test-linearAlgebra-vech-names-dot
lapply(
  X = 1,
  FUN = function(i,
                 text) {
    testthat::skip_on_cran()
    message(text)

    testthat::test_that(
      desc = paste(text, "names"),
      code = {
        testthat::expect_equal(
          object = linearAlgebra:::.VechNames(x = c("a", "b")),
          expected = c("a.a", "b.a", "b.b")
        )
        testthat::expect_equal(
          object = linearAlgebra:::.VechNames(x = c("a", "b"), sep = "_"),
          expected = c("a_a", "b_a", "b_b")
        )
      }
    )
  },
  text = "test-linearAlgebra-vech-names-dot"
)
