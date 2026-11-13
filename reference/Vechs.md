# Strict Half-Vectorize a Matrix

Returns \\(\operatorname{vechs} \\! \left( \boldsymbol{A} \right)\\),
the lower triangle of a square matrix, diagonal excluded, stacked column
by column. If `x` has column names, the elements are named
`"row,column"`.

## Usage

``` r
Vechs(x)
```

## Arguments

- x:

  Square matrix.

## Value

Returns a vector of length \\(k (k - 1) / 2\\).

## See also

Other Vectorization Functions:
[`Vec()`](https://ijapesigan.github.io/linearAlgebra/reference/Vec.md),
[`Vech()`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)

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
Vechs(x)
#> [1] 0.6666667 0.3333333 0.6666667
```
