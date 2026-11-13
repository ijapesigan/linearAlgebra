# Vectorize a Matrix

Returns \\(\operatorname{vec} \\! \left( \boldsymbol{A} \right)\\), the
columns of a matrix stacked into one vector.

## Usage

``` r
Vec(x)
```

## Arguments

- x:

  Matrix.

## Value

Returns a vector of length `nrow(x) * ncol(x)`.

## See also

Other Vectorization Functions:
[`Vech()`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md),
[`Vechs()`](https://ijapesigan.github.io/linearAlgebra/reference/Vechs.md)

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
Vec(x)
#> [1] 1.0000000 0.6666667 0.3333333 0.6666667 1.0000000 0.6666667 0.3333333
#> [8] 0.6666667 1.0000000
```
