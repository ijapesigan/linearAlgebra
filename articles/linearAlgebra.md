# linearAlgebra: Linear Algebra Helpers

## Description

Linear algebra helpers in R (R Core Team, 2026): vectorization and
half-vectorization, symmetric matrices from their half-vectorization,
the duplication matrix and its Moore-Penrose inverse, deviation scores,
and tests for symmetric and positive definite matrices. Each exported
function has an internal version without input checks that other
projects can copy.

## Installation

You can install the development version of `linearAlgebra` from
[GitHub](https://github.com/ijapesigan/linearAlgebra) with:

\
`if`` ``(``!`[`require`](https://rdrr.io/r/base/library.html)`(`[`"pak"`](https://pak.r-lib.org/)`)``)`` `[`install.packages`](https://rdrr.io/r/utils/install.packages.html)`(``"pak"``)`\
`pak``::`[`pkg_install`](https://pak.r-lib.org/reference/pkg_install.html)`(``"ijapesigan/linearAlgebra"``)`

## Example

\
[`library`](https://rdrr.io/r/base/library.html)`(``package ``=`` ``"linearAlgebra"``)`

A covariance matrix of three variables.

\
`sigma`` ``<-`` ``stats``::`[`cov`](https://rdrr.io/r/stats/cor.html)`(``x ``=`` ``datasets``::`[`mtcars`](https://rdrr.io/r/datasets/mtcars.html)`[``, `[`c`](https://rdrr.io/r/base/c.html)`(``"mpg"``, ``"wt"``, ``"hp"``)``]``)`\
`sigma`\
`#>             mpg        wt         hp`\
`#> mpg   36.324103 -5.116685 -320.73206`\
`#> wt    -5.116685  0.957379   44.19266`\
`#> hp  -320.732056 44.192661 4700.86694`

[`Vec()`](https://ijapesigan.github.io/linearAlgebra/reference/Vec.md)
stacks the columns.
[`Vech()`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)
stacks the lower triangle with the diagonal, and
[`Vechs()`](https://ijapesigan.github.io/linearAlgebra/reference/Vechs.md)
the lower triangle without it.

\
[`Vec`](https://ijapesigan.github.io/linearAlgebra/reference/Vec.md)`(``x ``=`` ``sigma``)`\
`#> [1]   36.324103   -5.116685 -320.732056   -5.116685    0.957379   44.192661`\
`#> [7] -320.732056   44.192661 4700.866935`\
[`Vech`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)`(``x ``=`` ``sigma``)`\
`#>     mpg,mpg      wt,mpg      hp,mpg       wt,wt       hp,wt       hp,hp `\
`#>   36.324103   -5.116685 -320.732056    0.957379   44.192661 4700.866935`\
[`Vechs`](https://ijapesigan.github.io/linearAlgebra/reference/Vechs.md)`(``x ``=`` ``sigma``)`\
`#>      wt,mpg      hp,mpg       hp,wt `\
`#>   -5.116685 -320.732056   44.192661`

[`SymofVech()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVech.md)
and
[`SymofVechs()`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVechs.md)
rebuild the symmetric matrix.

\
[`SymofVech`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVech.md)`(``x ``=`` `[`Vech`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)`(``x ``=`` ``sigma``)``)`\
`#>             [,1]      [,2]       [,3]`\
`#> [1,]   36.324103 -5.116685 -320.73206`\
`#> [2,]   -5.116685  0.957379   44.19266`\
`#> [3,] -320.732056 44.192661 4700.86694`\
[`SymofVechs`](https://ijapesigan.github.io/linearAlgebra/reference/SymofVechs.md)`(``x ``=`` `[`Vechs`](https://ijapesigan.github.io/linearAlgebra/reference/Vechs.md)`(``x ``=`` ``sigma``)``, diags ``=`` `[`diag`](https://rdrr.io/r/base/diag.html)`(``x ``=`` ``sigma``)``)`\
`#>             [,1]      [,2]       [,3]`\
`#> [1,]   36.324103 -5.116685 -320.73206`\
`#> [2,]   -5.116685  0.957379   44.19266`\
`#> [3,] -320.732056 44.192661 4700.86694`

The duplication matrix maps the half-vectorization to the vectorization,
and its Moore-Penrose inverse maps back.

\
`d_mat`` ``<-`` `[`DMat`](https://ijapesigan.github.io/linearAlgebra/reference/DMat.md)`(``k ``=`` ``3``)`\
[`all.equal`](https://rdrr.io/r/base/all.equal.html)`(`\
`  target ``=`` `[`as.vector`](https://rdrr.io/r/base/vector.html)`(``x ``=`` ``d_mat`` `[`%*%`](https://rdrr.io/r/base/matmult.html)` `[`Vech`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)`(``x ``=`` ``sigma``)``)``,`\
`  current ``=`` `[`Vec`](https://ijapesigan.github.io/linearAlgebra/reference/Vec.md)`(``x ``=`` ``sigma``)`\
`)`\
`#> [1] TRUE`\
[`all.equal`](https://rdrr.io/r/base/all.equal.html)`(`\
`  target ``=`` `[`as.vector`](https://rdrr.io/r/base/vector.html)`(``x ``=`` `[`PInvDmat`](https://ijapesigan.github.io/linearAlgebra/reference/PInvDmat.md)`(``k ``=`` ``3``)`` `[`%*%`](https://rdrr.io/r/base/matmult.html)` `[`Vec`](https://ijapesigan.github.io/linearAlgebra/reference/Vec.md)`(``x ``=`` ``sigma``)``)``,`\
`  current ``=`` `[`unname`](https://rdrr.io/r/base/unname.html)`(``obj ``=`` `[`Vech`](https://ijapesigan.github.io/linearAlgebra/reference/Vech.md)`(``x ``=`` ``sigma``)``)`\
`)`\
`#> [1] TRUE`

Tests for symmetric and positive definite matrices.

\
[`TestSymmetric`](https://ijapesigan.github.io/linearAlgebra/reference/TestSymmetric.md)`(``x ``=`` ``sigma``)`\
`#> [1] TRUE`\
[`TestPositiveDefinite`](https://ijapesigan.github.io/linearAlgebra/reference/TestPositiveDefinite.md)`(``x ``=`` ``sigma``)`\
`#> [1] TRUE`

Deviation scores.

\
`deviation`` ``<-`` `[`Deviation`](https://ijapesigan.github.io/linearAlgebra/reference/Deviation.md)`(`\
`  x ``=`` `[`as.matrix`](https://rdrr.io/r/base/matrix.html)`(``x ``=`` ``datasets``::`[`mtcars`](https://rdrr.io/r/datasets/mtcars.html)`[``, `[`c`](https://rdrr.io/r/base/c.html)`(``"mpg"``, ``"wt"``)``]``)`\
`)`\
`utils``::`[`head`](https://rdrr.io/r/utils/head.html)`(``x ``=`` ``deviation``)`\
`#>                         mpg       wt`\
`#> Mazda RX4          0.909375 -0.59725`\
`#> Mazda RX4 Wag      0.909375 -0.34225`\
`#> Datsun 710         2.709375 -0.89725`\
`#> Hornet 4 Drive     1.309375 -0.00225`\
`#> Hornet Sportabout -1.390625  0.22275`\
`#> Valiant           -1.990625  0.24275`

## Documentation

See [GitHub Pages](https://ijapesigan.github.io/linearAlgebra) for
package documentation.

## References

R Core Team. (2026). *R: A language and environment for statistical
computing*. R Foundation for Statistical Computing.
<https://www.R-project.org/>
