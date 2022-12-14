#' sszDownload
#'
#' @description function to generate a ssz-themed download button for csv and excel
#'
#' @param outputId shiny outputID for the download button
#' @param label shiny label for the download button
#'
#' @return tag a object
#'
#' @export
#'
#' @examples
#' sszDownload("csvDownload", label = "csv")
sszDownload <- function(outputId, label = "Download") {
  tags$a(
    id = outputId,
    class = "btn btn-default shiny-download-link chipDownload sszDownload",
    href = "",
    target = "_blank",
    download = NA,
    label
  )
}


#' sszDateRange
#'
#' @description function to generate a DateRangeInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId to dateRangeInput
#' @param label label parameter for dateRangeInput
#' @param format optional format parameter for dateRangeInput, default "dd.mm.yyyy"
#' @param language optional language parameter for dateRangeInput, default "de"
#' @param ... further named parameters for dateRangeInput (e.g. start, end, min, max, separator)
#'
#' @return the same as dateRangeInput return, with modified label class
#'
#' @export
#'
#' @examples
#' sszDateRange("DateRange", "Datum:",
#'   start  = "2001-01-01",
#'   end    = "2010-12-31",
#'   min    = "2001-01-01",
#'   max    = "2012-12-21"
#' )
#'
sszDateRange <- function(inputId,
                         label,
                         format = "dd.mm.yyyy",
                         language = "de",
                         ...) {
  html_list <- dateRangeInput(
    inputId = inputId,
    label = label,
    format = format,
    language = language,
    ...
  )
  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "ssz-label"
  )
  html_list
}


#' sszAirDatepickerInput
#'
#' @param inputId inputId parameter for airDatepickerInput
#' @param label label parameter for airDatePickerInput
#' @param dateFormat optional format parameter for airDatepickerInput, default "dd.mm.yyyy"
#' @param language optional language parameter for airDatepickerInput, default "de"
#' @param ssz_icon optional parameter to be used as the calendar icon, a html image tag, e.g. htmltools::tags$img(...)
#' @param ... further named parameters for airDatepickerInput
#'
#' @return the same as dateRangeInput return, with modified label class
#' @export
#'
#' @examples
#' sszAirDatepickerInput(
#' inputId = "airMonthStart",
#' label = "Basis Datum",
#' language="de",
#' range = FALSE, multiple=FALSE, clearButton = FALSE,
#' dateFormat = "MM-yyyy",
#' view = "years",
#' minView = "months",
#' autoClose = TRUE
#' )
sszAirDatepickerInput <- function(inputId,
                                  label,
                                  dateFormat = "dd.mm.yyyy",
                                  language = "de",
                                  ssz_icon = NULL,
                                  ...){
  if (is.null(ssz_icon)) {
    # then get rid of the addon/button with an icon
    addon = 'none'
  } else {
    addon = 'right'
  }

  html_list <- airDatepickerInput(
    inputId = inputId,
    label = label,
    language = language,
    dateFormat = dateFormat,
    addon = addon,
    ...
  )

  # add the html class to adjust the label
  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "ssz-label"
  )

  # if an icon is passed, add it at the appropriate place
  if (!is.null(ssz_icon)) {
    # add ssz icon
    html_list$children[[2]]$children[[3]]$children[[1]] <- ssz_icon
    # take the background and hover away by saying it is not a button
    html_list$children[[2]]$children[[3]]$attribs$class <- "input-group-addon"
  }

  html_list
}

#' sszSelectInput
#'
#' @description function to generate a selectInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId parameter for selectInput
#' @param label label parameter for selectInput
#' @param choices choices parameter for selectInput,
#' @param selectize optional selectize parameter, default FALSE as otherwise styling is influenced by other widgets (related to this? https://github.com/rstudio/shiny/issues/3125)
#' @param ... further named parameters to be passed to selectInput, e.g. selected
#'
#' @return the same as selectInput with modified label class
#'
#' @export
#'
#' @examples
#' sszSelectInput("select", "Destination:", choices = c("HOU", "LAX", "JFK", "SEA"), selected = "LAX")
sszSelectInput <- function(inputId,
                           label,
                           choices,
                           selectize = FALSE,
                           ...) {
  html_list <- selectInput(
    inputId = inputId,
    label = label,
    choices = choices,
    selectize = selectize,
    ...
  )
  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "ssz-label"
  )
  html_list
}


#' sszTextInput
#'
#' @description function to generate a textInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId parameter for textInput
#' @param label label parameter for textInput
#' @param ... further named parameters passed to textInput
#'
#' @return the same as textInput with modified label class
#'
#' @export
#'
#' @examples
#' sszTextInput("suchfeld", "Name:")
sszTextInput <- function(inputId, label, ...) {
  html_list <- textInput(
    inputId = inputId,
    label = label,
    ...
  )
  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "ssz-label"
  )
  html_list
}


#' sszRadioButtons
#'
#' @description function to generate radioButtons with the custom ssz (label) styling
#'
#' @details a "sszRadioButton" is added to the output of radioButtons, and a
#'  "sszRadioButton-label" class is added to the appropriate child. the whole thing is
#'  wrapped in a div with class "radioDiv"
#'
#' @param inputId inputId parameter for radioButtons
#' @param label label parameter for radioButtons
#' @param choices choices parameter for radioButtons
#' @param ... further named parameters for radioBuTons (e.g. inline = TRUE for horizontal layout)
#'
#' @return the return of radioButtons with modified labels, wrapped in a div with class "radioDiv"
#'
#' @export
#'
#' @examples
#' sszRadioButtons(
#'   inputId = "ButtonGroupLabel",
#'   label = "Flughafen:",
#'   choices = c("HOU", "LAX", "JFK", "SEA"),
#'   selected = "JFK" # default value
#' )
sszRadioButtons <- function(inputId, label, choices, ...) {
  html_list <- radioButtons(
    inputId = inputId,
    label = label,
    choices = choices,
    ...
  )
  current_class <- html_list$attribs$class
  html_list$attribs$class <- paste(current_class, "sszRadioButton")

  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "sszRadioButton-label"
  )

  tags$div(
    class = "radioDiv",
    html_list
  )
}


#' sszActionButton
#'
#' @description function to generate an action button with the custom ssz styling
#'
#' @param inputId inputId parameter for actionButton
#' @param label label parameter for actionButton
#' @param ... further parameters for actionButton
#'
#' @return the return of actionButton with "sszActionButton" added as a class
#'
#' @export
#'
#' @examples
#' sszActionButton("ActionButtonId", "Abfrage starten")
sszActionButton <- function(inputId, label, ...) {
  actionButton(
    inputId = inputId,
    label = label,
    class = "sszActionButton",
    ...
  )
}

#' sszActionButtonIcon
#'
#' @param inputId inputId parameter for actionButton
#' @param label label parameter for actionButton
#' @param ssz_icon htmltools::tags$img(...) with an icon/image to be used on the button
#' @param ... further parameters for actionButton
#'
#' @return the return of actionButton with "sszActionButton" added as a class
#' @export
#'
#' @examples \dontrun
#' {sszActionButtonIcon("ActionButtonId",
#' "Abfrage starten",
#' ssz_icon = img(icons_ssz$`arrow-right`)
#' )}
sszActionButtonIcon <- function(inputId, label, ssz_icon, ...) {
  actionButton(
    inputId = inputId,
    label = label,
    icon = NULL,
    width = NULL,
    ssz_icon,
    class = "sszActionButton",
    ...
  )
}

#' sszOgdDownload
#'
#' @description function to generate an ssz-themed ogd download button
#'
#' @param inputId inputId parameter for actionButton
#' @param label label parameter for actionButton
#' @param onclick onclick parameter for actionButton
#'
#' @return same as the shiny actionButton but with the "sszDownload" added as a class
#'
#' @export
#'
#' @examples
#' sszOgdDownload(
#'   inputId = "ogdDown", label = "OGD",
#'   onclick = "window.open('https://data.stadt-zuerich.ch/', '_blank')"
#' )
sszOgdDownload <- function(inputId, label, onclick) {
  actionButton(
    inputId = inputId,
    label = label,
    onclick = onclick,
    class = "sszDownload"
  )
}
