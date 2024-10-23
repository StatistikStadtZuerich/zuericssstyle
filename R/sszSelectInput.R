#' sszSelectInput
#'
#' @description function to generate a selectInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId parameter for selectInput
#' @param label label parameter for selectInput
#' @param choices choices parameter for selectInput,
#' @param selectize optional selectize parameter, default TRUE, but watch out for influence of other widgets (related to this? https://github.com/rstudio/shiny/issues/3125)
#' @param ... further named parameters to be passed to selectInput, e.g. selected
#'
#' @return the same as selectInput with modified label class
#'
#' @export
#'
#' @examples
#' \dontrun{
#' inst / examples / sszSelectInput / app.R
#' }
sszSelectInput <- function(inputId,
                           label,
                           choices,
                           selectize = TRUE,
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
