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
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' inst / examples / sszAirDatepickerInput / app.r
#' }
sszAirDatepickerInput <- function(inputId,
                                  label,
                                  dateFormat = "dd.mm.yyyy",
                                  language = "de",
                                  ssz_icon = NULL,
                                  ...) {
  if (is.null(ssz_icon)) {
    # then get rid of the addon/button with an icon
    addon <- "none"
  } else {
    addon <- "right"
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

  # if an icon is passed, replace default addon with wrapped icon
  if (!is.null(ssz_icon)) {
    icon_wrapper <- htmltools::tags$span(
      class = "ssz-input-icon",
      ssz_icon
    )

    html_list$children[[2]]$children[[3]]$children <- list(icon_wrapper)
  }

  html_list
}
