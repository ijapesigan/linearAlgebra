# Test for a Positive Definite Matrix

Returns `TRUE` if input is a positive definite matrix, and `FALSE`
otherwise.

## Usage

``` r
TestPositiveDefinite(x, tol = 1e-06)
```

## Arguments

- x:

  Numeric symmetric matrix.

- tol:

  Numeric. Tolerance.

## Value

Logical.

## Details

A \\(k \times k\\) symmetric matrix \\(\boldsymbol{A}\\) is positive
definite if all of its eigenvalues are positive. Eigenvalues above `tol`
times \\(\left\| \lambda\_{1} \right\|\\), where \\(\lambda\_{1}\\) is
the largest eigenvalue, pass.

## References

[Wikipedia: Definite
matrix](https://en.wikipedia.org/wiki/Definite_matrix)

## See also

Other Linear Algebra Functions:
[`TestPositiveSemiDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveSemiDefinite.md),
[`TestSymmetric()`](https://ijapesigan.github.io/linearAlgebra/reference/TestSymmetric.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
# TRUE
TestPositiveDefinite(diag(2))
#> [1] TRUE

# FALSE
TestPositiveDefinite(
  matrix(
    data = c(1, 2, 3, 2, 4, 5, 3, 5, 6),
    ncol = 3
  )
)
#> [1] FALSE
```
