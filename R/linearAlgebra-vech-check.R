#' Check the Half-Vectorization of a Matrix
#'
#' Stops with an error when `x` is not a vector
#' whose length is \eqn{k (k + 1) / 2} for a positive integer \eqn{k}.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k + 1) / 2}.
#'   Half-vectorization of a \eqn{k \times k} matrix,
#'   \eqn{\operatorname{vech} \! \left( \boldsymbol{A} \right)}.
#'
#' @return Returns \eqn{k}, the dimension of the matrix.
#'
#' @examples
#' .CheckVech(x = c(1, 0.5, 0.25, 2, 0.5, 3))
#'
#' @family Vectorization Functions
#' @keywords linearAlgebra vectorization internal
#' @noRd
.CheckVech <- function(x) {
  stopifnot(
    is.vector(x = x)
  )
  k <- 0.5 * (
    sqrt(
      x = 1 + 8 * length(x = x)
    ) - 1
  )
  stopifnot(
    k %% 1 == 0
  )
  k
}
