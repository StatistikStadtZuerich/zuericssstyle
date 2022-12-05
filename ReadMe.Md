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

All widgets need the css to work. Get this written to your local folder with

```{r, eval = FALSE}
get_shiny_css()
```
Alternatively, you can provide a full filepath (something like "C:/temp/mystyling.css") as a parameter.

#### Download buttons

A download button for downloading an excel/csv file can be called with 
```{r, eval = FALSE}
sszDownload("csvDownload", label = "csv")
```
This is the only function not based on a shiny function.

A button for a link to an external site, e.g. an Open Government Data portal, can be used with 
```{r, eval = FALSE}
sszOgdDownload(
   inputId = "ogdDown", 
   label = "OGD",
   onclick = "window.open('https://data.stadt-zuerich.ch/', '_blank')"
)
```
Provide the appropriate link in the `onclick` parameter. The function wraps around shiny's `actionButton`.

#### Select input

```{r, eval = FALSE}
sszSelectInput("select", "Destination:", choices = c("HOU", "LAX", "JFK", "SEA"), selected = "LAX")
```
The function wraps around shiny's `selectInput`.

#### Text input

```{r, eval = FALSE}
sszTextInput("suchfeld", "Name:")
```
The function wraps around shiny's `textInput`.

#### Radio buttons

```{r, eval = FALSE}
sszRadioButtons(
   inputId = "ButtonGroupLabel",
   label = "Flughafen:",
   choices = c("HOU", "LAX", "JFK", "SEA"),
   selected = "JFK" # default value
   )
```
The function wraps around shiny's `radioButtons`.

#### Date Range

```{r, eval = FALSE}
sszDateRange("DateRange", "Datum:",
   start  = "2001-01-01",
   end    = "2010-12-31",
   min    = "2001-01-01",
   max    = "2012-12-21"
   )
``` 
By default, the language is German and the date format is `dd.mm.yyyy`. This and additional parameters to shiny's `dateRangeInput`  can be passed as parameters. 

#### Action button

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

If you encounter a bug, please contact statistik@zuerich.ch.
