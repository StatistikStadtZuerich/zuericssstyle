# Package icons for zuericssstyle

Convenience helper that returns an icon set pointing to the package's
bundled `inst/icons/` directory. This saves callers from writing the
`icons::icon_set(system.file(...))`.

## Usage

``` r
icons_stzh()
```

## Value

An object produced by
[`icons::icon_set()`](https://pkg.mitchelloharawild.com/icon/reference/icon_set.html).
Use it in places that expect an icon-producing function, e.g.
`image = icons_stzh()("name")`.

## Examples

``` r
if (requireNamespace("icons", quietly = TRUE)) {
  icons_stzh()
}
#> Custom icon set (/icons)
```
