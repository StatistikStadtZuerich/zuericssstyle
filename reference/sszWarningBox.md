# sszWarningBox

Function to generate a styled warning box for explanatory messages. The
warning box optionally displays a title, descriptive text, and an icon.
Layout and structure are shared with other message boxes (info, error)
for consistent behavior.

## Usage

``` r
sszWarningBox(title = NULL, text, icon = NULL)
```

## Arguments

- title:

  Character string for the warning title.

- text:

  Character string for the warning message body.

- icon:

  Optional HTML tag for an icon. If `NULL` (default value), no icon is
  displayed.

## Value

A `shiny.tag` object representing the info box, suitable for direct
inclusion in a Shiny UI.

## See also

Other html_elements:
[`sszContextBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszContextBox.md),
[`sszInfoBox()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszInfoBox.md)

## Examples

``` r
if (FALSE) { # \dontrun{
sszWarningBox(
  title = "Information",
  text  = "Results are updated automatically when filters change.",
  icon  = icons_ssz("important-warning-filled")
)
} # }
```
