#' Symmetric Matrix from Its Strict Half-Vectorization (Internal)
#'
#' Builds the symmetric \eqn{k \times k} matrix
#' from \eqn{\operatorname{vechs} \! \left( \boldsymbol{A} \right)},
#' its lower triangle without the diagonal stacked column by column,
#' and its diagonal elements.
#' No input checks: see [SymofVechs()].
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k - 1) / 2}.
#'   Strict half-vectorization of a \eqn{k \times k} matrix,
#'   \eqn{\operatorname{vechs} \! \left( \boldsymbol{A} \right)}.
#' @param k Positive integer.
#'   Dimension of the \eqn{k \times k} matrix.
#' @param diags Numeric vector of length 1 or \eqn{k}.
#'   Diagonal elements.
#'
#' @return Returns a numeric \eqn{k \times k} symmetric matrix.
#'
#' @examples
#' .SymofVechs(x = c(0.5, 0.25, 0.5), k = 3, diags = 1)
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric internal
#' @noRd
.SymofVechs <- function(x,
                        k,
                        diags) {
  out <- matrix(
    data = 0,
    nrow = k,
    ncol = k
  )
  out[lower.tri(x = out, diag = FALSE)] <- x
  out[upper.tri(x = out)] <- t(x = out)[upper.tri(x = out)]
  diag(x = out) <- diags
  out
}
