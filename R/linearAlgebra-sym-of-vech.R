#' Symmetric Matrix from Its Half-Vectorization
#'
#' Builds the symmetric \eqn{k \times k} matrix
#' from \eqn{\operatorname{vech} \! \left( \boldsymbol{A} \right)},
#' its lower triangle stacked column by column.
#' \eqn{k} is found from the length of `x`.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k + 1) / 2}.
#'   Half-vectorization of a \eqn{k \times k} matrix,
#'   \eqn{\operatorname{vech} \! \left( \boldsymbol{A} \right)}.
#'
#' @return Returns a numeric \eqn{k \times k} symmetric matrix.
#'
#' @examples
#' x <- toeplitz((3:1) / 3)
#' x
#' SymofVech(x = Vech(x))
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric
#' @export
SymofVech <- function(x) {
  .SymofVech(
    x = x,
    k = .CheckVech(x = x)
  )
}
