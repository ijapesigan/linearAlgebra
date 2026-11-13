# Symmetric Matrix from Its Half-Vectorization

Builds the symmetric \\(k \times k\\) matrix from \\(\operatorname{vech}
\\! \left( \boldsymbol{A} \right)\\), its lower triangle stacked column
by column. \\(k\\) is found from the length of `x`.

## Usage

``` r
SymofVech(x)
```

## Arguments

- x:

  Numeric vector of length \\(k (k + 1) / 2\\). Half-vectorization of a
  \\(k \times k\\) matrix, \\(\operatorname{vech} \\! \left(
  \boldsymbol{A} \right)\\).

## Value

Returns a numeric \\(k \times k\\) symmetric matrix.

## See also

Other Symmetric Functions:
[`DMat()`](https://ijapesigan.github.io/linearAlgebra/reference/DMat.md),
[`PInvDmat()`](https://ijapesigan.github.io/linearAlgebra/reference/PInvDmat.md),
[`SymofVechs()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVechs.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
x <- toeplitz((3:1) / 3)
x
#>           [,1]      [,2]      [,3]
#> [1,] 1.0000000 0.6666667 0.3333333
#> [2,] 0.6666667 1.0000000 0.6666667
#> [3,] 0.3333333 0.6666667 1.0000000
SymofVech(x = Vech(x))
#>           [,1]      [,2]      [,3]
#> [1,] 1.0000000 0.6666667 0.3333333
#> [2,] 0.6666667 1.0000000 0.6666667
#> [3,] 0.3333333 0.6666667 1.0000000
```
