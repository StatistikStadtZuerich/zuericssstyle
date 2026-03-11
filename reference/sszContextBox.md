# sszContextBox

Function to generate a styled info box with optional title, text, and
icon. The layout uses a flex container for the icon and text, and
applies package-specific classes ("context-box-div", "context-box-text",
"sszContextBox") for consistent styling.

## Usage

``` r
sszContextBox(title, text, icon = NULL)
```

## Arguments

- title:

  A character string for the heading of the context box (displayed as
  h6).

- text:

  A character string for the body text of the context box.

- icon:

  Optional HTML tag for an icon. If `NULL` (default value), no icon is
  displayed.

## Value

A `shiny.tag` object representing the context box, ready to include in
Shiny UI.

## See also

Other html_elements:
[`sszInfoBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszInfoBox.md),
[`sszWarningBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszWarningBox.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sszContextBox(
  title = "No data available",
  text  = "Start a query to see results.",
  icon  = icons_ssz("info-help")
)
} # }
```
