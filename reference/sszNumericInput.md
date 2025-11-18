# sszNumericInput

function to generate a numericInput with the custom ssz label styling
(via "ssz-label" class)

## Usage

``` r
sszNumericInput(inputId, label, value, ...)
```

## Arguments

- inputId:

  inputId parameter for numericInput

- label:

  label parameter for numericInput

- value:

  value parameter (initial value) for numericInput

- ...:

  further named parameters to be passed to numericInput
  (min/max/step/width)

## Value

the same as textInput with modified label class

## See also

Other shiny_widgets:
[`sszActionButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszActionButton.md),
[`sszAirDatepickerInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAirDatepickerInput.md),
[`sszAutocompleteInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAutocompleteInput.md),
[`sszDateRange()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDateRange.md),
[`sszDownloadButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDownloadButton.md),
[`sszOgdDownload()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszOgdDownload.md),
[`sszRadioButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioButtons.md),
[`sszRadioGroupButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioGroupButtons.md),
[`sszSelectInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSelectInput.md),
[`sszSliderInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSliderInput.md),
[`sszTextInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszTextInput.md)

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / sszNumericInput / app.r
} # }
```
