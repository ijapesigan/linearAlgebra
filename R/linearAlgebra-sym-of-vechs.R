#' Symmetric Matrix from Its Strict Half-Vectorization
#'
#' Builds the symmetric \eqn{k \times k} matrix
#' from \eqn{\operatorname{vechs} \! \left( \boldsymbol{A} \right)},
#' its lower triangle without the diagonal stacked column by column,
#' and its diagonal elements.
#' \eqn{k} is found from the length of `x`.
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector of length \eqn{k (k - 1) / 2}.
#'   Strict half-vectorization of a \eqn{k \times k} matrix,
#'   \eqn{\operatorname{vechs} \! \left( \boldsymbol{A} \right)}.
#' @param diags Numeric vector of length 1 or \eqn{k}.
#'   Diagonal elements.
#'
#' @return Returns a numeric \eqn{k \times k} symmetric matrix.
#'
#' @examples
#' x <- toeplitz((3:1) / 3)
#' x
#' SymofVechs(x = Vechs(x), diags = 1)
#'
#' @family Symmetric Functions
#' @keywords linearAlgebra symmetric
#' @export
SymofVechs <- function(x,
                       diags) {
  .SymofVechs(
    x = x,
    k = .CheckVechs(
      x = x,
      diags = diags
    ),
    diags = diags
  )
}
