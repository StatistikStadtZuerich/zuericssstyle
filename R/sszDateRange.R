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
#' \dontrun{
#' inst / examples / sszDateRange / app.r
#' }
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
