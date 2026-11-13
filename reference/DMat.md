# The Duplication Matrix

Returns the duplication matrix \\(\boldsymbol{D}\_{k}\\), the \\(k^2
\times k (k + 1) / 2\\) matrix with \\(\boldsymbol{D}\_{k}
\operatorname{vech} \\! \left( \boldsymbol{A} \right) =
\operatorname{vec} \\! \left( \boldsymbol{A} \right)\\) for every
symmetric \\(k \times k\\) matrix \\(\boldsymbol{A}\\).

## Usage

``` r
DMat(k)
```

## Arguments

- k:

  Positive integer. Dimension of the \\(k \times k\\) matrix.

## Value

Returns a numeric \\(k^2 \times k (k + 1) / 2\\) matrix.

## See also

Other Symmetric Functions:
[`PInvDmat()`](https://ijapesigan.github.io/linearAlgebra/reference/PInvDmat.md),
[`SymofVech()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVech.md),
[`SymofVechs()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVechs.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
DMat(k = 3)
#>       [,1] [,2] [,3] [,4] [,5] [,6]
#>  [1,]    1    0    0    0    0    0
#>  [2,]    0    1    0    0    0    0
#>  [3,]    0    0    1    0    0    0
#>  [4,]    0    1    0    0    0    0
#>  [5,]    0    0    0    1    0    0
#>  [6,]    0    0    0    0    1    0
#>  [7,]    0    0    1    0    0    0
#>  [8,]    0    0    0    0    1    0
#>  [9,]    0    0    0    0    0    1
```
