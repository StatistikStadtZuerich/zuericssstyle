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
#' \dontrun{inst/examples/sszRadioButtons/app.r}
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
