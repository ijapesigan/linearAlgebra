#' The Cholesky Decomposition, NA on Failure (Internal)
#'
#' Calls [chol()] and returns `NA`
#' when it gives a warning or an error,
#' for example when `x` is not positive definite.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric symmetric matrix.
#' @param pivot Logical.
#'   Should pivoting be used? Passed to [chol()].
#' @param tol Numeric.
#'   Tolerance for use with `pivot = TRUE`. Passed to [chol()].
#' @param ... Other arguments passed to [chol()].
#'
#' @return Returns the upper triangular Cholesky factor
#'   \eqn{\boldsymbol{R}} with
#'   \eqn{\boldsymbol{R}^{\prime} \boldsymbol{R} = \boldsymbol{x}},
#'   or `NA` if [chol()] gives a warning or an error.
#'
#' @examples
#' .Chol(x = diag(x = 2, nrow = 2))
#' .Chol(x = matrix(data = c(1, 2, 2, 1), nrow = 2))
#'
#' @family Decomposition Functions
#' @keywords linearAlgebra decomposition internal
#' @noRd
.Chol <- function(x,
                  pivot = FALSE,
                  tol = -1,
                  ...) {
  out <- tryCatch(
    expr = {
      chol(
        x = x,
        pivot = pivot,
        tol = tol,
        ...
      )
    },
    warning = function(w) {
      NA
    },
    error = function(e) {
      NA
    }
  )
  out
}
