## ---- test-linearAlgebra-vechs-names-dot
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
          object = linearAlgebra:::.VechsNames(x = c("a", "b", "c")),
          expected = c("b.a", "c.a", "c.b")
        )
      }
    )
  },
  text = "test-linearAlgebra-vechs-names-dot"
)
