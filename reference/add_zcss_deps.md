# Add zuericssstyle CSS dependencies to an HTML tag

Attach the package CSS (from `inst/css/`) as html dependencies to a tag
or tagList. This ensures styles are available when rendering HTML,
pkgdown sites, htmlwidgets, or Shiny apps.

## Usage

``` r
add_zcss_deps(tag)
```

## Arguments

- tag:

  A htmltools tag or tagList (for example the UI returned by
  [`shiny::fluidPage()`](https://rdrr.io/pkg/shiny/man/fluidPage.html)).
  The returned value is a `tagList` that includes the provided `tag` and
  the package dependencies.

## Value

A `tagList` containing `tag` plus the CSS htmlDependencies.

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / ssz_deps_with_bootstrap / app.r
} # }
```
