# linearAlgebra 0.0.3

## New

- `TestPositiveSemiDefinite()`: `TRUE` when no eigenvalue is below `-tol` times the absolute value of the largest
  eigenvalue (`tol = 1e-06`). Zero eigenvalues pass. It restores the rule `TestPositiveDefinite()` used before 0.0.2.
- Tests for `TestPositiveSemiDefinite()` and its internal `.TestPositiveSemiDefinite()`.

# linearAlgebra 0.0.2

## Fixes

- `.LDL()` returned a wrong `D` and `L` for a 1 x 1 matrix (`diag()` on a scalar builds an identity of that size);
  `D` and `L` are now built with `nrow`.
- `TestPositiveDefinite()` passed matrices with a zero eigenvalue.
  An eigenvalue must now be above `tol` times the absolute value of the largest eigenvalue
  (`tol = 1e-06`), so positive semidefinite matrices return `FALSE`.
  This changes the result for semidefinite input.

## Tests

- A test file for every function, including regression tests for the two fixes.
- Benchmarks (`bench`) in `.setup/tests-benchmark/`.

# linearAlgebra 0.0.1

## Initial release

- The rProject template (0.0.66); private `jeksterslab-psu/linearAlgebra`, public `ijapesigan/linearAlgebra`.
- Complete roxygen for every function; internal functions use `@noRd`.
- C++ moves to `.setup/cpp/`; `SymofVechCpp()` and `VechCpp()` are in separate files.
