#' sszWarningBox
#'
#' @description
#' Function to generate a styled warning box for explanatory
#' messages. The warning box optionally displays a title, descriptive text,
#' and an icon. Layout and structure are shared with other
#' message boxes (info, error) for consistent behavior.
#'
#' @param title Character string for the warning title.
#' @param text Character string for the warning message body.
#' @param icon Optional HTML tag for an icon. If `NULL` (default value), no icon is displayed.
#'
#' @return A `shiny.tag` object representing the info box, suitable for
#'   direct inclusion in a Shiny UI.
#' @export
#' @family html_elements
#'
#' @examples
#' \dontrun{
#' sszWarningBox(
#'   title = "Information",
#'   text  = "Results are updated automatically when filters change.",
#'   icon  = icons_ssz("important-warning-filled")
#' )
#' }
sszWarningBox <- function(title = NULL, text, icon = NULL) {
  html_list <- tags$div(
    class = "info-box-div info-box--warning",

    # Unified content container (flex)
    tags$div(
      class = "info-box-content",

      # Optional icon
      if (!is.null(icon)) icon,

      # Textual content (title + body stacked)
      tags$div(
        class = "info-box-text",
        if (!is.null(title)) {
          p(class = "info-box-title", title)
        },
        p(class = "info-box-body", text),
      )
    )
  )

  html_list
}
