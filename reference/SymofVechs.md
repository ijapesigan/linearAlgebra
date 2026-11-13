# Symmetric Matrix from Its Strict Half-Vectorization

Builds the symmetric \\(k \times k\\) matrix from
\\(\operatorname{vechs} \\! \left( \boldsymbol{A} \right)\\), its lower
triangle without the diagonal stacked column by column, and its diagonal
elements. \\(k\\) is found from the length of `x`.

## Usage

``` r
SymofVechs(x, diags)
```

## Arguments

- x:

  Numeric vector of length \\(k (k - 1) / 2\\). Strict
  half-vectorization of a \\(k \times k\\) matrix,
  \\(\operatorname{vechs} \\! \left( \boldsymbol{A} \right)\\).

- diags:

  Numeric vector of length 1 or \\(k\\). Diagonal elements.

## Value

Returns a numeric \\(k \times k\\) symmetric matrix.

## See also

Other Symmetric Functions:
[`DMat()`](https://ijapesigan.github.io/linearAlgebra/reference/DMat.md),
[`PInvDmat()`](https://ijapesigan.github.io/linearAlgebra/reference/PInvDmat.md),
[`SymofVech()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVech.md)

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
SymofVechs(x = Vechs(x), diags = 1)
#>           [,1]      [,2]      [,3]
#> [1,] 1.0000000 0.6666667 0.3333333
#> [2,] 0.6666667 1.0000000 0.6666667
#> [3,] 0.3333333 0.6666667 1.0000000
```
