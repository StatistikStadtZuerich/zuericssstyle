#' sszRadioGroupButtons
#'
#' @description function to generate radioButtons with the custom ssz (label) styling
#'
#' @details a "sszRadioButton" is added to the output of radioButtons, and a
#'  "sszRadioButton-label" class is added to the appropriate child. the whole thing is
#'  wrapped in a div with class "radioDiv"
#'
#' @param inputId inputId parameter for radioButtons
#' @param label label parameter for radioButtons, default NULL; leave null for button above chart
#' @param choices choices parameter for radioButtons, default NULL
#' @param selected initially selected value, default NULL
#' @param ... further named parameters for shinyWidget::radioGroupButtons
#'
#' @return the return of radioGroupButtons with modified labels
#'
#' @export
#'
#' @examples
#' \dontrun{
#' inst / examples / sszRadioGroupButtons / app.r
#' }
sszRadioGroupButtons <- function(inputId, label = NULL, choices = NULL, selected = NULL, ...) {
  html_list <- radioGroupButtons(
    inputId = inputId,
    label = label,
    choices = choices,
    ...
  )

  current_class_1 <- html_list$attribs$class
  # add ssz-radiogroup class
  html_list$attribs$class <- paste(current_class_1, "ssz-radiogroup-1")

  current_class_2 <- html_list$children[[3]]$attribs$class
  html_list$children[[3]]$attribs$class <- paste(current_class_2, "ssz-radiogroup-2")

  current_class_3 <- html_list$children[[3]]$children[[1]]$attribs$class
  html_list$children[[3]]$children[[1]]$attribs$class <- paste(current_class_3, "ssz-radiogroup-3")


  html_list


  # htmltools::tagQuery(a)$find("something...")
  #
  # individual buttons
  # current_class <- html_list$attribs$class
  # html_list$attribs$class <- paste(current_class, "sszRadioButton")
  #
  # current_label_class <- html_list$children[[1]]$attribs$class
  # html_list$children[[1]]$attribs$class <- paste(
  #   current_label_class,
  #   "sszRadioButton-label"
  # )
}
