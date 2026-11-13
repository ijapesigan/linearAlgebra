# Test for a Positive Semidefinite Matrix

Returns `TRUE` if input is a positive semidefinite matrix, and `FALSE`
otherwise.

## Usage

``` r
TestPositiveSemiDefinite(x, tol = 1e-06)
```

## Arguments

- x:

  Numeric symmetric matrix.

- tol:

  Numeric. Tolerance. An eigenvalue as small as `-tol` times \\(\left\|
  \lambda\_{1} \right\|\\) (roundoff) is accepted.

## Value

Logical.

## Details

A \\(k \times k\\) symmetric matrix \\(\boldsymbol{A}\\) is positive
semidefinite if none of its eigenvalues is negative. Eigenvalues at or
above `-tol` times \\(\left\| \lambda\_{1} \right\|\\), where
\\(\lambda\_{1}\\) is the largest eigenvalue, pass. Zero eigenvalues
pass, unlike in
[`TestPositiveDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveDefinite.md).

## References

[Wikipedia: Definite
matrix](https://en.wikipedia.org/wiki/Definite_matrix)

## See also

[`TestPositiveDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveDefinite.md)

Other Linear Algebra Functions:
[`TestPositiveDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveDefinite.md),
[`TestSymmetric()`](https://ijapesigan.github.io/linearAlgebra/reference/TestSymmetric.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
# TRUE
TestPositiveSemiDefinite(x = diag(2))
#> [1] TRUE

# TRUE (eigenvalues 2 and 0)
TestPositiveSemiDefinite(x = matrix(data = 1, nrow = 2, ncol = 2))
#> [1] TRUE

# FALSE
TestPositiveSemiDefinite(
  x = matrix(
    data = c(1, 2, 3, 2, 4, 5, 3, 5, 6),
    ncol = 3
  )
)
#> [1] FALSE
```
