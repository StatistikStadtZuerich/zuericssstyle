#' sszActionButton
#'
#' @description function to generate an action button with the custom ssz styling
#'
#' @param inputId inputId parameter for actionButton
#' @param label label parameter for actionButton
#' @param ... further parameters for actionButton
#'
#' @return the return of actionButton with "sszActionButton" added as a class
#'
#' @export
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' inst / examples / sszActionButton / app.r
#' }
sszActionButton <- function(inputId, label, ...) {
  actionButton(
    inputId = inputId,
    label = label,
    class = "sszActionButton",
    ...
  )
}
