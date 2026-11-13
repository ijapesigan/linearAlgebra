#' The LDL Decomposition (Internal)
#'
#' Decomposes a symmetric positive definite matrix
#' \eqn{\boldsymbol{x} = \boldsymbol{L} \boldsymbol{D} \boldsymbol{L}^{\prime}},
#' where \eqn{\boldsymbol{L}} is unit lower triangular
#' and \eqn{\boldsymbol{D}} is diagonal,
#' from the Cholesky factor of `x`.
#' No input checks: [chol()] stops when `x` is not positive definite.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric symmetric positive definite matrix.
#'
#' @return Returns a list with elements
#'   `L`, the unit lower triangular matrix, and
#'   `D`, the diagonal matrix.
#'
#' @examples
#' .LDL(x = matrix(data = c(4, 2, 2, 3), nrow = 2))
#'
#' @family Decomposition Functions
#' @keywords linearAlgebra decomposition internal
#' @noRd
.LDL <- function(x) {
  C <- chol(x = x)
  Lc <- t(x = C)
  d <- diag(x = Lc)
  k <- length(x = d)
  D <- diag(x = d * d, nrow = k)
  L <- Lc %*% diag(x = 1 / d, nrow = k)
  list(
    L = L,
    D = D
  )
}
