#' sszNumericInput
#'
#' @description function to generate a numericInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId parameter for numericInput
#' @param label label parameter for numericInput
#' @param value value parameter (initial value) for numericInput
#' @param ... further named parameters to be passed to numericInput (min/max/step/width)
#'
#' @return the same as textInput with modified label class
#' @export
#'
#' @example inst/examples/sszNumericInput/app.r
sszNumericInput <- function(inputId, label, value, ...) {
  html_list <- numericInput(
    inputId = inputId,
    label = label,
    value = value,
    ...
  )

  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "ssz-label"
  )
  html_list
}
