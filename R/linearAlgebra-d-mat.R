#' The Duplication Matrix
#'
#' Returns the duplication matrix \eqn{\boldsymbol{D}_{k}},
#' the \eqn{k^2 \times k (k + 1) / 2} matrix
#' with \eqn{\boldsymbol{D}_{k}
#' \operatorname{vech} \! \left( \boldsymbol{A} \right) =
#' \operatorname{vec} \! \left( \boldsymbol{A} \right)}
#' for every symmetric \eqn{k \times k} matrix \eqn{\boldsymbol{A}}.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param k Positive integer.
#'   Dimension of the \eqn{k \times k} matrix.
#'
#' @return Returns a numeric \eqn{k^2 \times k (k + 1) / 2} matrix.
#'
#' @examples
#' DMat(k = 3)
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric
#' @export
DMat <- function(k) {
  .DMat(
    k = as.integer(x = k)
  )
}
