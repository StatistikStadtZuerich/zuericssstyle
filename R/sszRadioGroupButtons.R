#' sszRadioGroupButtons
#'
#' @description function to generate radioGroupButtons from shinyWidgets with the custom ssz (label) styling
#'
#' @details classes ssz-radiogroup-1, ssz-radiogroup-2, and ssz-radiogroup-3 are added
#' (starting from outermost div, moving down 1 step at a time); though currently these are not used for styling;
#' only .btn-group-toggle>.btn-default and .btn-default.active are used for the styling
#'
#' @param inputId inputId parameter for radioGroupButtons
#' @param label label parameter for radioGroupButtons, default NULL; leave NULL for button above chart (i.e. no label)
#' @param choices choices parameter for radioGroupButtons, default NULL
#' @param selected initially selected value, default NULL
#' @param ... further named parameters for shinyWidget::radioGroupButtons
#'
#' @return the return of radioGroupButtons with modified html classes
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

  # add ssz-radiogroup-1 class to outermost div
  current_class_1 <- html_list$attribs$class
  html_list$attribs$class <- paste(current_class_1, "ssz-radiogroup-1")

  # add ssz-radiogroup-2 class to div one layer down
  current_class_2 <- html_list$children[[3]]$attribs$class
  html_list$children[[3]]$attribs$class <- paste(current_class_2, "ssz-radiogroup-2")

  # add ssz-radiogroup-3 class to div another layer down
  current_class_3 <- html_list$children[[3]]$children[[1]]$attribs$class
  html_list$children[[3]]$children[[1]]$attribs$class <- paste(current_class_3, "ssz-radiogroup-3")

  html_list
}
