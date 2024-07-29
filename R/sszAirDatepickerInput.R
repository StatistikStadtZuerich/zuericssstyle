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
