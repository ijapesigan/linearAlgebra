#' Deviation from the Center (Vector Input, Internal)
#'
#' Subtracts `center` from every element of `x`.
#' No input checks: see [Deviation()].
#'
#' @author Ivan Jacob Agaloos Pesigan
#'
#' @param x Numeric vector.
#'   Data vector.
#' @param center Numeric vector of length 1.
#'   Center.
#' @param mat Logical.
#'   If `TRUE`, returns a one-column matrix.
#'   If `FALSE`, returns a vector.
#'
#' @return Returns a numeric one-column matrix if `mat = TRUE`,
#'   and a numeric vector otherwise.
#'
#' @examples
#' .DofVec(x = c(1, 2, 3), center = 2, mat = FALSE)
#'
#' @family Scaling Functions
#' @keywords linearAlgebra scaling internal
#' @noRd
.DofVec <- function(x,
                    center,
                    mat = TRUE) {
  out <- x - center
  if (mat) {
    out <- matrix(
      data = out,
      ncol = 1
    )
  }
  out
}
