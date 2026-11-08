#' Half-Vectorize a Matrix
#'
#' Returns \eqn{\operatorname{vech} \! \left( \boldsymbol{A} \right)},
#' the lower triangle of a square matrix, diagonal included,
#' stacked column by column.
#' If `x` has column names, the elements are named
#' `"row,column"`.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Square matrix.
#'
#' @return Returns a vector of length \eqn{k (k + 1) / 2}.
#'
#' @examples
#' x <- toeplitz((3:1) / 3)
#' x
#' Vech(x)
#'
#' @family Vectorization Functions
#' @keywords linearAlgebra vectorization
#' @export
Vech <- function(x) {
  stopifnot(is.matrix(x = x))
  out <- .Vech(x = x)
  varnames <- colnames(x = x)
  if (!is.null(x = varnames)) {
    names(x = out) <- .VechNames(
      x = varnames,
      sep = ","
    )
  }
  out
}
