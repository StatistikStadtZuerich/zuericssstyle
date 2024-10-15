#' sszSliderInput
#'
#' @description function to generate a sliderInput with the custom ssz label styling (via "ssz-label" class)
#'
#' @param inputId inputId parameter for sliderInput
#' @param label label parameter for sliderInput
#' @param value value parameter (initial value) for sliderInput
#' @param min min value that can be selected for sliderInput
#' @param max max value that can be selected for sliderInput
#' @param ... further named parameters to be passed to sliderInput (step/ticks/width)
#'
#' @return the same as textInput with modified label class
#' @export
#'
#' @examples
#' \dontrun{inst/examples/sszSliderInput/app.r}
sszSliderInput <- function(inputId, label, value, min, max, ...) {
  html_list <- sliderInput(
    inputId = inputId,
    label = label,
    value = value,
    min = min,
    max = max,
    ...
  )

  current_class <- html_list$attribs$class
  html_list$attribs$class <- paste(current_class, "sszSliderInput")

  current_label_class <- html_list$children[[1]]$attribs$class
  html_list$children[[1]]$attribs$class <- paste(
    current_label_class,
    "sszRadioButton-label"
  )
  html_list
}
