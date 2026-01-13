#' sszInfoBox
#'
#' @description
#' Function to generate a styled information box for neutral or explanatory
#' messages. The info box optionally displays a title, descriptive text,
#' and an icon. Layout is based on a flex container that aligns the icon
#' and text content consistently across use cases.
#'
#' Package-specific CSS classes ("info-box-div", "info-box-content",
#' "sszInfoBox") are applied to enable scoped styling and predictable
#' customization.
#'
#' @param title A character string for the heading of the info box
#'   (rendered as an h6 element). If `NULL`, no title is shown.
#' @param text A character string containing the body text of the info box.
#' @param icon Optional HTML tag for an icon (e.g. SVG or Font Awesome).
#'   If `NULL`, the box is rendered without an icon.
#'
#' @return A `shiny.tag` object representing the info box, suitable for
#'   direct inclusion in a Shiny UI.
#' @export
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' sszInfoBox(
#'   title = "Information",
#'   text  = "Results are updated automatically when filters change.",
#'   icon  = icons_ssz("info")
#' )
#' }
sszInfoBox <- function(title = NULL, text, icon = NULL) {
  html_list <- tags$div(
    class = "info-box-div",

    # Unified content container (flex)
    tags$div(
      class = "info-box-content",

      # Optional icon
      if (!is.null(icon)) icon,

      # Textual content (title + body stacked)
      tags$div(
        class = "info-box-text",
        if (!is.null(title)) {
          p(title)
        },
        p(text)
      )
    )
  )

  # Append package-level class for consistent targeting
  current_class <- html_list$attribs$class
  html_list$attribs$class <- paste(current_class, "sszInfoBox")

  html_list
}
