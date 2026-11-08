#' Check the Strict Half-Vectorization of a Matrix
#'
#' Stops with an error when `x` is not a vector
#' whose length is \eqn{k (k - 1) / 2} for a positive integer \eqn{k},
#' or when `diags`, if given, is not a vector of length 1 or \eqn{k}.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k - 1) / 2}.
#'   Strict half-vectorization of a \eqn{k \times k} matrix,
#'   \eqn{\operatorname{vechs} \! \left( \boldsymbol{A} \right)}.
#' @param diags Numeric vector of length 1 or \eqn{k}, or `NULL`.
#'   Diagonal elements.
#'
#' @return Returns \eqn{k}, the dimension of the matrix.
#'
#' @examples
#' .CheckVechs(x = c(0.5, 0.25, 0.5), diags = 1)
#'
#' @family Vectorization Functions
#' @keywords linearAlgebra vectorization internal
#' @noRd
.CheckVechs <- function(x,
                        diags = NULL) {
  stopifnot(
    is.vector(x = x)
  )
  k <- 0.5 * (
    sqrt(
      x = 1 + 8 * length(x = x)
    ) + 1
  )
  stopifnot(
    k %% 1 == 0
  )
  if (!is.null(x = diags)) {
    stopifnot(
      is.vector(x = diags)
    )
    diags_length <- length(x = diags)
    stopifnot(
      diags_length == 1 || diags_length == k
    )
  }
  k
}
