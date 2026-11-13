#' Test for a Positive Semidefinite Matrix
#'
#' Returns `TRUE` if input
#' is a positive semidefinite matrix,
#' and `FALSE` otherwise.
#'
#' A
#' \eqn{k \times k}
#' symmetric matrix
#' \eqn{\boldsymbol{A}}
#' is positive semidefinite
#' if none of its eigenvalues is negative.
#' Eigenvalues at or above `-tol` times \eqn{\left| \lambda_{1} \right|},
#' where \eqn{\lambda_{1}} is the largest eigenvalue, pass.
#' Zero eigenvalues pass,
#' unlike in [TestPositiveDefinite()].
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric symmetric matrix.
#' @param tol Numeric.
#'   Tolerance.
#'   An eigenvalue as small as `-tol` times
#'   \eqn{\left| \lambda_{1} \right|}
#'   (roundoff) is accepted.
#'
#' @references
#'   [Wikipedia: Definite matrix](https://en.wikipedia.org/wiki/Definite_matrix)
#'
#' @return Logical.
#'
#' @examples
#' # TRUE
#' TestPositiveSemiDefinite(x = diag(2))
#'
#' # TRUE (eigenvalues 2 and 0)
#' TestPositiveSemiDefinite(x = matrix(data = 1, nrow = 2, ncol = 2))
#'
#' # FALSE
#' TestPositiveSemiDefinite(
#'   x = matrix(
#'     data = c(1, 2, 3, 2, 4, 5, 3, 5, 6),
#'     ncol = 3
#'   )
#' )
#'
#' @seealso [TestPositiveDefinite()]
#' @family Linear Algebra Functions
#' @keywords linearAlgebra test
#' @export
TestPositiveSemiDefinite <- function(x,
                                     tol = 1e-06) {
  stopifnot(
    TestSymmetric(x = x)
  )
  .TestPositiveSemiDefinite(
    eigen = eigen(x = x, symmetric = TRUE),
    tol = tol
  )
}
