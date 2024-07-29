#' sszAutocompleteInput
#'
#' @param inputId inputId parameter for autocomplete_input
#' @param label label parameter for autocomplete_input
#' @param options options parameter for autocomplete_input
#' @param ... further parameters for autocomplete_input
#'
#' @return same as autocomplete_input
#' @export
#'
#' @examples
#' \dontrun{
#' sszAutocompleteInput(
#'  "street",
#'  "Geben Sie eine Strasse ein",
#'  unique(addresses$StrasseLang)
#' )
#' }
sszAutocompleteInput <- function(inputId, label, options, ...) {
  html_list <- dqshiny::autocomplete_input(inputId, label, options, ...)
  html_list$children[[1]]$attribs$class <- "ssz-label"
  html_list
}
