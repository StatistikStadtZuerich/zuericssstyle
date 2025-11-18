# sszRadioGroupButtons

function to generate radioGroupButtons from shinyWidgets with the custom
ssz (label) styling

## Usage

``` r
sszRadioGroupButtons(
  inputId,
  label = NULL,
  choices = NULL,
  selected = NULL,
  ...
)
```

## Arguments

- inputId:

  inputId parameter for radioGroupButtons

- label:

  label parameter for radioGroupButtons, default NULL; leave NULL for
  button above chart (i.e. no label)

- choices:

  choices parameter for radioGroupButtons, default NULL

- selected:

  initially selected value, default NULL

- ...:

  further named parameters for shinyWidget::radioGroupButtons

## Value

the return of radioGroupButtons with modified html classes

## Details

classes ssz-radiogroup-1, ssz-radiogroup-2, and ssz-radiogroup-3 are
added (starting from outermost div, moving down 1 step at a time);
though currently these are not used for styling; only
.btn-group-toggle\>.btn-default and .btn-default.active are used for the
styling

## See also

Other shiny_widgets:
[`sszActionButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszActionButton.md),
[`sszAirDatepickerInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAirDatepickerInput.md),
[`sszAutocompleteInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAutocompleteInput.md),
[`sszDateRange()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDateRange.md),
[`sszDownloadButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDownloadButton.md),
[`sszNumericInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszNumericInput.md),
[`sszOgdDownload()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszOgdDownload.md),
[`sszRadioButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioButtons.md),
[`sszSelectInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSelectInput.md),
[`sszSliderInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSliderInput.md),
[`sszTextInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszTextInput.md)

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / sszRadioGroupButtons / app.r
} # }
```
