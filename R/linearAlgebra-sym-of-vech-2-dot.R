#' Symmetric Matrix from Its Row-Major Half-Vectorization (Internal)
#'
#' Builds the symmetric \eqn{k \times k} matrix
#' from its lower triangle stacked row by row,
#' that is, its upper triangle stacked column by column.
#' No input checks.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k + 1) / 2}.
#'   Row-major half-vectorization of a \eqn{k \times k} matrix.
#' @param k Positive integer.
#'   Dimension of the \eqn{k \times k} matrix.
#'
#' @return Returns a numeric \eqn{k \times k} symmetric matrix.
#'
#' @examples
#' .SymofVech2(x = c(1, 0.5, 2, 0.25, 0.5, 3), k = 3)
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric internal
#' @noRd
.SymofVech2 <- function(x,
                        k) {
  sym <- matrix(
    data = 0,
    nrow = k,
    ncol = k
  )
  sym[upper.tri(x = sym, diag = TRUE)] <- x
  sym[lower.tri(x = sym)] <- t(x = sym)[lower.tri(x = sym)]
  sym
}
