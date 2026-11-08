// -----------------------------------------------------------------------------
// edit .setup/cpp/000-forward-declarations.cpp
// Ivan Jacob Agaloos Pesigan
// -----------------------------------------------------------------------------

#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

arma::mat DiffCols(const arma::mat& x);

arma::mat SymofVechCpp(const arma::rowvec& x, const arma::uword& k);

arma::rowvec VechCpp(const arma::mat& x);
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
// -----------------------------------------------------------------------------
// edit .setup/cpp/linearAlgebra-sym-of-vech-dot.cpp
// Ivan Jacob Agaloos Pesigan
// -----------------------------------------------------------------------------

#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

//' Symmetric Matrix from Its Half-Vectorization (C++)
//'
//' Builds the symmetric \eqn{k \times k} matrix
//' from its half-vectorization
//' (the lower triangle, column by column, as `.Vech()` in R).
//' Called from other C++ functions; not exported to R.
//'
//' @author Ivan Jacob Agaloos Pesigan
//'
//' @param x Numeric row vector of length \eqn{k (k + 1) / 2}.
//' @param k Positive integer. Dimension of the matrix.
//'
//' @return Numeric \eqn{k \times k} symmetric matrix.
//'
//' @examples
//' // In C++: SymofVechCpp(vech_row, 3);
//'
//' @noRd
arma::mat SymofVechCpp(const arma::rowvec& x, const arma::uword& k) {
  arma::mat out(k, k);
  arma::uword idx = 0;
  for (arma::uword j = 0; j < k; j++) {
    for (arma::uword i = j; i < k; i++) {
      out(i, j) = x(idx);
      out(j, i) = x(idx);
      idx++;
    }
  }
  return out;
}
// -----------------------------------------------------------------------------
// edit .setup/cpp/linearAlgebra-vech-dot.cpp
// Ivan Jacob Agaloos Pesigan
// -----------------------------------------------------------------------------

#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

//' Half-Vectorization of a Square Matrix (C++)
//'
//' Stacks the lower triangle of a square matrix,
//' diagonal included, column by column, as `.Vech()` in R.
//' Called from other C++ functions; not exported to R.
//'
//' @author Ivan Jacob Agaloos Pesigan
//'
//' @param x Numeric \eqn{k \times k} matrix.
//'
//' @return Numeric row vector of length \eqn{k (k + 1) / 2}.
//'
//' @examples
//' // In C++: VechCpp(sigma);
//'
//' @noRd
arma::rowvec VechCpp(const arma::mat& x) {
  const arma::uword k = x.n_rows;
  arma::rowvec out(k * (k + 1) / 2);
  arma::uword idx = 0;
  for (arma::uword j = 0; j < k; j++) {
    for (arma::uword i = j; i < k; i++) {
      out(idx) = x(i, j);
      idx++;
    }
  }
  return out;
}
