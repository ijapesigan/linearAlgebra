#' Deviation from the Mean
#'
#' Centers a vector, or each column of a matrix or data frame,
#' at its mean.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector, matrix, or data frame.
#'
#' @return Returns a numeric matrix:
#'   one column for a vector input,
#'   the dimensions of `x` otherwise.
#'
#' @examples
#' Deviation(x = stats::rnorm(n = 10))
#' Deviation(x = matrix(stats::rnorm(n = 10 * 2), ncol = 2))
#'
#' @family Scaling Functions
#' @keywords linearAlgebra scaling
#' @export
Deviation <- function(x) {
  if (is.vector(x = x)) {
    out <- .DofVec(
      x = x,
      center = mean(x = x),
      mat = TRUE
    )
  } else {
    stopifnot(is.matrix(x = x) | is.data.frame(x = x))
    dims <- dim(x = x)
    out <- .DofMat(
      x = x,
      center = colMeans(x = x),
      n = dims[1],
      k = dims[2]
    )
  }
  out
}
