# sszRadioButtons

function to generate radioButtons with the custom ssz (label) styling

## Usage

``` r
sszRadioButtons(inputId, label, choices, ...)
```

## Arguments

- inputId:

  inputId parameter for radioButtons

- label:

  label parameter for radioButtons

- choices:

  choices parameter for radioButtons

- ...:

  further named parameters for radioBuTons (e.g. inline = TRUE for
  horizontal layout)

## Value

the return of radioButtons with modified labels, wrapped in a div with
class "radioDiv"

## Details

a "sszRadioButton" is added to the output of radioButtons, and a
"sszRadioButton-label" class is added to the appropriate child. the
whole thing is wrapped in a div with class "radioDiv"

## See also

Other shiny_widgets:
[`sszActionButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszActionButton.md),
[`sszAirDatepickerInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAirDatepickerInput.md),
[`sszAutocompleteInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszAutocompleteInput.md),
[`sszDateRange()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDateRange.md),
[`sszDownloadButton()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszDownloadButton.md),
[`sszNumericInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszNumericInput.md),
[`sszOgdDownload()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszOgdDownload.md),
[`sszRadioGroupButtons()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszRadioGroupButtons.md),
[`sszSelectInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSelectInput.md),
[`sszSliderInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszSliderInput.md),
[`sszTextInput()`](https://statistikstadtzuerich.github.io/zuericssstyle/reference/sszTextInput.md)

## Examples

``` r
if (FALSE) { # \dontrun{
inst / examples / sszRadioButtons / app.r
} # }
```
