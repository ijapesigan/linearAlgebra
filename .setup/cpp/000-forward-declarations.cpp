// -----------------------------------------------------------------------------
// edit .setup/cpp/000-forward-declarations.cpp
// Ivan Jacob Agaloos Pesigan
// -----------------------------------------------------------------------------

#include <RcppArmadillo.h>
// [[Rcpp::depends(RcppArmadillo)]]

arma::mat DiffCols(const arma::mat& x);

arma::mat SymofVechCpp(const arma::rowvec& x, const arma::uword& k);

arma::rowvec VechCpp(const arma::mat& x);
