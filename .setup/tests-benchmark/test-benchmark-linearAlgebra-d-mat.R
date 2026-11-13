## ---- test-benchmark-linearAlgebra-d-mat
# Run by hand: bench is not part of the unit tests.
stopifnot(requireNamespace(package = "bench", quietly = TRUE))
lapply(
  X = c(3, 10, 20),
  FUN = function(k) {
    x <- crossprod(x = matrix(data = stats::rnorm(n = k * k), nrow = k))
    v <- linearAlgebra:::.Vech(x = x)
    d <- linearAlgebra:::.DMat(k = k)
    print(x = bench::mark(linearAlgebra:::.DMat(k = k), iterations = 10))
  }
)
