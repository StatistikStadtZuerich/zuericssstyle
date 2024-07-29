#' sszOgdDownload
#'
#' @description function to generate an ssz-themed ogd download button
#'
#' @param outputId outputId parameter
#' @param label label parameter (i.e. text to be shown)
#' @param href link to be opened
#' @param image optional image/icon in the form of a html-i Tag, default NULL
#'
#' @return tags$a
#'
#' @export
#'
#' @examples
#' sszOgdDownload(
#'   outputId = "ogdDown", label = "OGD",
#'   href = "https://data.stadt-zuerich.ch"
#' )
sszOgdDownload <- function(outputId, href, label, image = NULL) {
  tags$a(id = outputId,
         href = href,
         class = "sszDownload",
         target = "_blank",
         download = NA,
         image,
         label)
}
