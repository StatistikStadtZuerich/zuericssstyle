#' sszDownloadButton
#'
#' @description function to generate a ssz-themed download button for csv and excel, wraps around downloadButton
#'
#' @param outputId shiny outputID for the download button
#' @param label character string specifying the button label. Must be one of "CSV" or "XLSX", default NULL
#' @param image html-i tag with an image/icon to be added before the text; default NULL
#' @param icon optional icon parameter for downloadButton, default NULL
#' @param ... optional further named params for downloadButton (class parameter will be ignored/overwritten)
#'
#' @return a downloadButton with class sszDownload and optionally the image added
#'
#' @export
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' inst / examples / sszDownloadButton / app.r
#' }
sszDownloadButton <- function(outputId, label = NULL, image = NULL, icon = NULL, ...) {
  # Default if missing or NULL
  if (is.null(label)) {
    label <- "Download"
  } else {
    # Only allow CSV or XLSX if label is provided
    label <- match.arg(label, choices = c("CSV", "XLSX"))
  }

  # Make html list
  html_list <- downloadButton(
    outputId = outputId,
    label = label,
    icon = icon,
    ...
  )

  # remove the standard classes 8especially btn and btn-default) to avoid style inheritance
  # keep only shiny-download-link and add the new sszDownload
  html_list$attribs$class <- "shiny-download-link sszDownload"

  # add image/icon before text label (which is html_list$children[[2]])
  html_list$children[[1]] <- image
  html_list
}
