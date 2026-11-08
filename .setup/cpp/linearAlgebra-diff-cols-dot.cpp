// -----------------------------------------------------------------------------
// edit .setup/cpp/linearAlgebra-diff-cols-dot.cpp
// Ivan Jacob Agaloos Pesigan
// -----------------------------------------------------------------------------

#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

//' Pairwise Differences of Columns
//'
//' Computes `x[, i] - x[, j]` for every pair `i < j`,
//' in the order of `utils::combn(seq_len(ncol(x)), 2)`.
//'
//' @author Ivan Jacob Agaloos Pesigan
//'
//' @param x Numeric matrix with \eqn{p} columns.
//'
//' @return Numeric matrix with `nrow(x)` rows
//'   and \eqn{p (p - 1) / 2} columns.
//'
//' @examples
//' .DiffCols(x = matrix(data = 1:6, nrow = 2))
//'
//' @noRd
// [[Rcpp::export(.DiffCols)]]
arma::mat DiffCols(const arma::mat& x) {
  const arma::uword p = x.n_cols;
  arma::mat out(x.n_rows, p * (p - 1) / 2);
  arma::uword idx = 0;
  for (arma::uword i = 0; i < p; i++) {
    for (arma::uword j = i + 1; j < p; j++) {
      out.col(idx) = x.col(i) - x.col(j);
      idx++;
    }
  }
  return out;
}
