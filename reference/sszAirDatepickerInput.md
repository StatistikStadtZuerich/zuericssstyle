# sszAirDatepickerInput

sszAirDatepickerInput

## Usage

``` r
sszAirDatepickerInput(
  inputId,
  label,
  dateFormat = "dd.mm.yyyy",
  language = "de",
  ssz_icon = NULL,
  ...
)
```

## Arguments

- inputId:

  inputId parameter for airDatepickerInput

- label:

  label parameter for airDatePickerInput

- dateFormat:

  optional format parameter for airDatepickerInput, default "dd.mm.yyyy"

- language:

  optional language parameter for airDatepickerInput, default "de"

- ssz_icon:

  optional parameter to be used as the calendar icon, a html image tag,
  e.g. htmltools::tags\$img(...)

- ...:

  further named parameters for airDatepickerInput

## Value

the same as dateRangeInput return, with modified label class

## See also

Other shiny_widgets:
[`sszActionButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszActionButton.md),
[`sszAutocompleteInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAutocompleteInput.md),
[`sszDateRange()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDateRange.md),
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
inst / examples / sszAirDatepickerInput / app.r
} # }
```
