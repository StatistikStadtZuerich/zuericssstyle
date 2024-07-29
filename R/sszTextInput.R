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
