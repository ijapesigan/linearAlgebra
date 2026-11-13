# Deviation from the Mean

Centers a vector, or each column of a matrix or data frame, at its mean.

## Usage

``` r
Deviation(x)
```

## Arguments

- x:

  Numeric vector, matrix, or data frame.

## Value

Returns a numeric matrix: one column for a vector input, the dimensions
of `x` otherwise.

## Author

Ivan Jacob Agaloos Pesigan

## Examples

``` r
Deviation(x = stats::rnorm(n = 10))
#>             [,1]
#>  [1,] -0.9586790
#>  [2,]  0.6966816
#>  [3,] -1.9958991
#>  [4,]  0.4357932
#>  [5,]  1.0629172
#>  [6,]  1.5897761
#>  [7,] -1.3804532
#>  [8,]  0.1940392
#>  [9,]  0.1971649
#> [10,]  0.1586591
Deviation(x = matrix(stats::rnorm(n = 10 * 2), ncol = 2))
#>             [,1]        [,2]
#>  [1,] -0.3750035  0.59171322
#>  [2,]  0.8076780  0.48651006
#>  [3,]  2.2437208 -1.18098475
#>  [4,] -1.4522935  0.86133512
#>  [5,]  0.6911229  2.01206373
#>  [6,] -1.6843156  0.02611369
#>  [7,] -0.3433166 -0.81228855
#>  [8,]  0.1260940  0.10760849
#>  [9,]  0.7216923 -0.70323015
#> [10,] -0.7353789 -1.38884085
```
