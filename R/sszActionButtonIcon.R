#' sszActionButtonIcon
#'
#' @description function to generate an action button with an icon and with the custom ssz styling
#'
#' @param inputId inputId parameter for actionButton
#' @param label label parameter for actionButton
#' @param ssz_icon htmltools::tags$img(...) with an icon/image to be used on the button
#' @param ... further parameters for actionButton
#'
#' @return the return of actionButton with "sszActionButton" added as a class
#' @export
#'
#' @examples
#' \dontrun{
#' sszActionButtonIcon("ActionButtonId",
#' "Abfrage starten",
#' ssz_icon = img(icons_ssz$`arrow-right`))
#' }
sszActionButtonIcon <- function(inputId, label, ssz_icon, ...) {
  actionButton(
    inputId = inputId,
    label = label,
    icon = NULL,
    width = NULL,
    ssz_icon,
    class = "sszActionButton",
    ...
  )
}
