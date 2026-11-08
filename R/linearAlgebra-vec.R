#' Vectorize a Matrix
#'
#' Returns \eqn{\operatorname{vec} \! \left( \boldsymbol{A} \right)},
#' the columns of a matrix stacked into one vector.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Matrix.
#'
#' @return Returns a vector of length `nrow(x) * ncol(x)`.
#'
#' @examples
#' x <- toeplitz((3:1) / 3)
#' x
#' Vec(x)
#'
#' @family Vectorization Functions
#' @keywords linearAlgebra vectorization
#' @export
Vec <- function(x) {
  stopifnot(is.matrix(x = x))
  .Vec(x = x)
}
