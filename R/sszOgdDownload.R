#' sszOgdDownload
#'
#' @description function to generate an ssz-themed ogd download button
#'
#' @param outputId outputId parameter
#' @param label label parameter (i.e. text to be shown), default is "OGD"
#' @param href link to be opened
#' @param image optional image/icon in the form of a html-i Tag, default is icons_ssz("external-link")
#'
#' @return tags$a
#'
#' @export
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' inst / examples / sszOgdDownload / app.r
#' }
sszOgdDownload <- function(outputId, href, label = "OGD", image = icons_ssz("external-link")) {
  tags$a(
    id = outputId,
    href = href,
    class = "sszDownload",
    target = "_blank",
    download = NA,
    image,
    label
  )
}
