# sszDateRange

function to generate a DateRangeInput with the custom ssz label styling
(via "ssz-label" class)

## Usage

``` r
sszDateRange(inputId, label, format = "dd.mm.yyyy", language = "de", ...)
```

## Arguments

- inputId:

  inputId to dateRangeInput

- label:

  label parameter for dateRangeInput

- format:

  optional format parameter for dateRangeInput, default "dd.mm.yyyy"

- language:

  optional language parameter for dateRangeInput, default "de"

- ...:

  further named parameters for dateRangeInput (e.g. start, end, min,
  max, separator)

## Value

the same as dateRangeInput return, with modified label class

## See also

Other shiny_widgets:
[`sszActionButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszActionButton.md),
[`sszAirDatepickerInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAirDatepickerInput.md),
[`sszAutocompleteInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAutocompleteInput.md),
[`sszDownloadButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDownloadButton.md),
[`sszNumericInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszNumericInput.md),
[`sszOgdDownload()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszOgdDownload.md),
[`sszRadioButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioButtons.md),
[`sszRadioGroupButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioGroupButtons.md),
[`sszSelectInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSelectInput.md),
[`sszSliderInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSliderInput.md),
[`sszTextInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszTextInput.md)

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / sszDateRange / app.r
} # }
```
