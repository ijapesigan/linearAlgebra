#' Test for a Positive Definite Matrix
#'
#' Returns `TRUE` if input
#' is a positive definite matrix,
#' and `FALSE` otherwise.
#'
#' A
#' \eqn{k \times k}
#' symmetric matrix
#' \eqn{\boldsymbol{A}}
#' is positive definite
#' if all of its eigenvalues are positive.
#' Eigenvalues above `tol` times \eqn{\left| \lambda_{1} \right|},
#' where \eqn{\lambda_{1}} is the largest eigenvalue, pass.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric symmetric matrix.
#' @param tol Numeric.
#'   Tolerance.
#'
#' @references
#'   [Wikipedia: Definite matrix](https://en.wikipedia.org/wiki/Definite_matrix)
#'
#' @return Logical.
#'
#' @examples
#' # TRUE
#' TestPositiveDefinite(diag(2))
#'
#' # FALSE
#' TestPositiveDefinite(
#'   matrix(
#'     data = c(1, 2, 3, 2, 4, 5, 3, 5, 6),
#'     ncol = 3
#'   )
#' )
#'
#' @family Linear Algebra Functions
#' @keywords linearAlgebra test
#' @export
TestPositiveDefinite <- function(x,
                                 tol = 1e-06) {
  stopifnot(
    TestSymmetric(x = x)
  )
  .TestPositiveDefinite(
    eigen = eigen(x = x, symmetric = TRUE),
    tol = tol
  )
}
