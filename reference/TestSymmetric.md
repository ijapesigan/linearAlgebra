# Test for a Symmetric Matrix

Returns `TRUE` if input is a symmetric matrix, and `FALSE` otherwise.

## Usage

``` r
TestSymmetric(x)
```

## Arguments

- x:

  Numeric matrix.

## Value

Logical.

## Details

A \\(k \times k\\) matrix \\(\boldsymbol{A}\\) is symmetric if
\\(\boldsymbol{A} = \boldsymbol{A}^{\prime}\\). Elements are compared
exactly.

## See also

Other Linear Algebra Functions:
[`TestPositiveDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveDefinite.md),
[`TestPositiveSemiDefinite()`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveSemiDefinite.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
# TRUE
TestSymmetric(diag(2))
#> [1] TRUE

# FALSE
TestSymmetric(
  matrix(
    data = 1:9,
    ncol = 3
  )
)
#> [1] FALSE
```
