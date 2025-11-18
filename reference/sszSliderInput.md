# sszSliderInput

function to generate a sliderInput with the custom ssz label styling
(via "ssz-label" class)

## Usage

``` r
sszSliderInput(inputId, label, value, min, max, ...)
```

## Arguments

- inputId:

  inputId parameter for sliderInput

- label:

  label parameter for sliderInput

- value:

  value parameter (initial value) for sliderInput

- min:

  min value that can be selected for sliderInput

- max:

  max value that can be selected for sliderInput

- ...:

  further named parameters to be passed to sliderInput
  (step/ticks/width)

## Value

the same as textInput with modified label class

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
[`sszRadioGroupButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioGroupButtons.md),
[`sszSelectInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSelectInput.md),
[`sszTextInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszTextInput.md)

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / sszSliderInput / app.r
} # }
```
