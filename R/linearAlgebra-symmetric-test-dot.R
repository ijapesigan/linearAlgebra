#' Test for a Symmetric Matrix (Internal)
#'
#' Returns `TRUE` if input
#' is a symmetric matrix,
#' and `FALSE` otherwise.
#'
#' A
#' \eqn{k \times k}
#' matrix
#' \eqn{\boldsymbol{A}}
#' is symmetric
#' if \eqn{\boldsymbol{A} = \boldsymbol{A}^{\prime}}.
#' Elements are compared exactly.
#' No input checks: see [TestSymmetric()].
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric square matrix.
#'
#' @return Logical.
#'
#' @examples
#' .TestSymmetric(x = diag(2))
#'
#' @family Linear Algebra Functions
#' @keywords linearAlgebra test internal
#' @noRd
.TestSymmetric <- function(x) {
  all(
    x == t(x = x)
  )
}
