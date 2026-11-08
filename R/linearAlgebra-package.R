#' linearAlgebra: Linear Algebra Helpers
#'
#' Vectorization and half-vectorization of matrices,
#' symmetric matrices from their half-vectorization,
#' the duplication matrix \eqn{\boldsymbol{D}_{k}}
#' and its Moore-Penrose inverse,
#' deviation scores,
#' and tests for symmetric and positive definite matrices.
#' Each exported function has an internal version without input checks
#' that other projects can copy.
#'
#' @author Ivan Jacob Agaloos Pesigan
#' @aliases linearAlgebra-package
#' @keywords internal
"_PACKAGE"

## usethis namespace: start
#' @importFrom Rcpp sourceCpp
#' @useDynLib linearAlgebra, .registration = TRUE
## usethis namespace: end
NULL
