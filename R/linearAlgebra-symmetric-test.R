#' Test for a Symmetric Matrix
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
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric matrix.
#'
#' @return Logical.
#'
#' @examples
#' # TRUE
#' TestSymmetric(diag(2))
#'
#' # FALSE
#' TestSymmetric(
#'   matrix(
#'     data = 1:9,
#'     ncol = 3
#'   )
#' )
#'
#' @family Linear Algebra Functions
#' @keywords linearAlgebra test
#' @export
TestSymmetric <- function(x) {
  stopifnot(
    is.matrix(x = x)
  )
  .TestSymmetric(x = x)
}
