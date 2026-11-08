#' The Moore-Penrose Inverse of the Duplication Matrix
#'
#' Returns the Moore-Penrose inverse of the duplication matrix,
#' \eqn{\boldsymbol{D}_{k}^{+} =
#' \left( \boldsymbol{D}_{k}^{\prime} \boldsymbol{D}_{k} \right)^{-1}
#' \boldsymbol{D}_{k}^{\prime}},
#' with \eqn{\boldsymbol{D}_{k}^{+}
#' \operatorname{vec} \! \left( \boldsymbol{A} \right) =
#' \operatorname{vech} \! \left( \boldsymbol{A} \right)}
#' for every symmetric \eqn{k \times k} matrix \eqn{\boldsymbol{A}}.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param k Positive integer.
#'   Dimension of the \eqn{k \times k} matrix.
#'
#' @return Returns a numeric \eqn{k (k + 1) / 2 \times k^2} matrix.
#'
#' @examples
#' PInvDmat(k = 3)
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric
#' @export
PInvDmat <- function(k) {
  .PInvDmat(
    d = DMat(k = k)
  )
}
