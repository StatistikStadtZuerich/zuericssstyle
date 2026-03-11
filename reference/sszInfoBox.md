# sszInfoBox

Function to generate a styled information box for neutral or explanatory
messages. The info box optionally displays a title, descriptive text,
and an icon. Layout is based on a flex container that aligns the icon
and text content consistently across use cases.

Package-specific CSS classes ("info-box-div", "info-box-content",
"sszInfoBox") are applied to enable scoped styling and predictable
customization.

## Usage

``` r
sszInfoBox(title = NULL, text, icon = NULL)
```

## Arguments

- title:

  A character string for the heading of the info box (rendered as an h6
  element). If `NULL` (default value), no title is shown.

- text:

  A character string containing the body text of the info box.

- icon:

  icon Optional HTML tag for an icon. If `NULL` (default value), no icon
  is displayed.

## Value

A `shiny.tag` object representing the info box, suitable for direct
inclusion in a Shiny UI.

## See also

Other html_elements:
[`sszContextBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszContextBox.md),
[`sszWarningBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszWarningBox.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sszInfoBox(
  title = "Information",
  text  = "Results are updated automatically when filters change.",
  icon  = icons_ssz("info")
)
} # }
```
