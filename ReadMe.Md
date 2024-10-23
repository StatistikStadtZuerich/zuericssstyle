<img src='man/pictures/Hexagon_zuericssstyle.png' align="right" height="138.5" />

# zuericssstyle
zuericssstyle is an R-Package, which provides specific css files and styled shiny widgets according to the corporate design of the city of Zurich. The package contains widgets and styling that [Statistik Stadt Zürich](https://www.stadt-zuerich.ch/prd/de/index/statistik.html) have used so far for creating shiny apps that conform to the corporate design.

## Installation
The easiest way to get zuericssstyle is to install it from this repo:

```{r, eval = FALSE}
# install.packages("devtools")
devtools::install_github("StatistikStadtZuerich/zuericssstyle")
```

Alternatively, download the files (by clicking 'Clone or download' / 'Download Zip'), extract it to any location on your computer, e.g. to your Desktop and then run:

```{r, eval = FALSE}
remotes::install_local("<path_to_location>/zuericssstyle-main")
```

## Version
To check your version of zuericssstyle, run:

```{r, eval = FALSE}
packageVersion("zuericssstyle")
```

## Usage

A number of functions wrap around the original shiny functions to provide styling. All functions allow additional parameters of the original shiny function to be used and passed along.

### Styled shiny widgets

All widgets need the css to work. This is added as an html dependency when using the `ssz_page` or the `add_zcss_deps` functions. Use `ssz_page` as a styled drop-in replacement of shiny's `fluidPage`:

```{r, eval = FALSE}
ui <- ssz_page(...)
```

Alternatively, if you are not using a fluid page, wrap your ui (e.g. `fixedPage` or whatever you fancy) in `add_zcss_deps`:
```{r, eval = FALSE}
ui <- add_zcss_deps(fixedPage(...))
```

#### Numeric input
![numeric input](man/pictures/numericInput.png)
```{r, eval = FALSE}
sszNumericInput("number", "Zahl", 4)
```
This is based on shiny's `numericInput`.

#### Download buttons

![csv download](man/pictures/csv.png)

A download button for downloading an excel/csv file can be called with 
```{r, eval = FALSE}
sszDownloadButton("csvDownload",
                        label = "csv",
                        image = img(icons_ssz("download"))
                        )
```
The image parameter is optional; it is based on shiny's `downloadButton`.

A button for a link to an external site, e.g. an Open Government Data portal, 
![ogd](man/pictures/ogd.png)
can be used with 
```{r, eval = FALSE}
sszOgdDownload(outputId = "ogdDown",
                         label = "OGD",
                         href = "https://data.stadt-zuerich.ch/",
                         image = img(icons_ssz("external-link"))
            )
```
Provide the appropriate link in the `href` parameter.

#### Select input

![select input](man/pictures/selectInput.png)

```{r, eval = FALSE}
sszSelectInput("select", "Destination:", choices = c("HOU", "LAX", "JFK", "SEA"), selected = "LAX")
```
The function wraps around shiny's `selectInput`.

#### Radio buttons

![radio buttons](man/pictures/radioButtons.png)

```{r, eval = FALSE}
sszRadioButtons(
   inputId = "ButtonGroupLabel",
   label = "Flughafen:",
   choices = c("EWR", "JFK", "LGA"),
   selected = "JFK"
   )
```
The function wraps around shiny's `radioButtons`. Use `inline = TRUE` for horizontal alignment.

#### Text input

![text input](man/pictures/textInput.png)

```{r, eval = FALSE}
sszTextInput("suchfeld", "Name:")
```
The function wraps around shiny's `textInput`.

#### Slider input (Styling could change)

![sliderInput](man/pictures/sliderInput.png)

```{r, eval = FALSE}
sszSliderInput(inputId = "choose_number", label = "sliderInput:", value = 30, min = 0, max = 100)
```
The function wraps around shiny's `sliderInput`. Currently this is not officially part of the city's CI/CD. Therefore the styling for the sliderInput might vary slightly at a later point in time (as of 2024-10-16).

#### Autocomplete

![autocomplete](man/pictures/autocomplete.png)

```{r, eval = FALSE}
sszAutocompleteInput(
            "street",
            "Geben Sie eine Strasse ein",
            unique(addresses$StrasseLang)
          )
``` 
This relies on the `autocomplete_input()` function from the [dqshiny](https://github.com/daqana/dqshiny) package.

#### Date Range

![date range](man/pictures/dateRange.png)

```{r, eval = FALSE}
sszDateRange("DateRange", "Datum:",
   start  = "2001-01-01",
   end    = "2010-12-31",
   min    = "2001-01-01",
   max    = "2012-12-21"
   )
``` 
By default, the language is German and the date format is `dd.mm.yyyy`. This and additional parameters to shiny's `dateRangeInput`  can be passed as parameters. 

#### Date selection with shinyWidgets::airDatepickerInput

In contrast to the standard `dateRangeInput`, the `airDatepickerInput` allows selection of only years, or years and months, rather than 'only' year-month-day as with the `dateRangeInput`

By default, the language is set to `'de'`, and the `dateFormat` to `"dd.mm.yyyy"`. Both parameters can be overridden by supplying something else.

Additionally, there are options for adding a specific calendar icon. By default, it looks like this, no calendar icon is shown, and internally, `addon` is set to `'none'`.

![airdate picker default](man/pictures/airdatepicker_default.png)

```{r, eval = FALSE}
sszAirDatepickerInput(
          inputId = "airMonthStart",
          label = "Basis Datum",
          dateFormat = "MM-yyyy",
          view="years",
          minView="months",
          autoClose=TRUE
        )
``` 


Alternatively, a custom image can be passed to be used instead of the calendar icon, in the form of a `htmltools::tags$img(...)`.


![airdate picker with icon](man/pictures/airdatepicker_icon.png)

```{r, eval = FALSE}
sszAirDatepickerInput(
          inputId = "airMonthStart2",
          label = "Basis Datum",
          dateFormat = "MM-yyyy",
          view = "years",
          minView = "months",
          autoClose = TRUE,
          ssz_icon = img(icons_ssz("calendar"))
        )
```

#### Action button

![action button](man/pictures/actionbutton.png)

```{r, eval = FALSE}
sszActionButton("ActionButtonId", "Abfrage starten")
```
The function wraps around shiny's `actionButton`.

### CSS file for html
If you need the css file to e.g. style a html report, use 

```{r, eval = FALSE}
get_generic_css()
```

to get the css file written to your local folder. Alternatively, you can provide a full filepath (something like "C:/temp/mystyling.css" as a parameter.)

## Getting help

If you encounter a bug, please open an issue or contact statistik@zuerich.ch.
