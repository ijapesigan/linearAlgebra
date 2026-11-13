# The Moore-Penrose Inverse of the Duplication Matrix

Returns the Moore-Penrose inverse of the duplication matrix,
\\(\boldsymbol{D}\_{k}^{+} = \left( \boldsymbol{D}\_{k}^{\prime}
\boldsymbol{D}\_{k} \right)^{-1} \boldsymbol{D}\_{k}^{\prime}\\), with
\\(\boldsymbol{D}\_{k}^{+} \operatorname{vec} \\! \left( \boldsymbol{A}
\right) = \operatorname{vech} \\! \left( \boldsymbol{A} \right)\\) for
every symmetric \\(k \times k\\) matrix \\(\boldsymbol{A}\\).

## Usage

``` r
PInvDmat(k)
```

## Arguments

- k:

  Positive integer. Dimension of the \\(k \times k\\) matrix.

## Value

Returns a numeric \\(k (k + 1) / 2 \times k^2\\) matrix.

## See also

Other Symmetric Functions:
[`DMat()`](https://ijapesigan.github.io/linearAlgebra/reference/DMat.md),
[`SymofVech()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVech.md),
[`SymofVechs()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVechs.md)

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
PInvDmat(k = 3)
#>      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9]
#> [1,]    1  0.0  0.0  0.0    0  0.0  0.0  0.0    0
#> [2,]    0  0.5  0.0  0.5    0  0.0  0.0  0.0    0
#> [3,]    0  0.0  0.5  0.0    0  0.0  0.5  0.0    0
#> [4,]    0  0.0  0.0  0.0    1  0.0  0.0  0.0    0
#> [5,]    0  0.0  0.0  0.0    0  0.5  0.0  0.5    0
#> [6,]    0  0.0  0.0  0.0    0  0.0  0.0  0.0    1
```
