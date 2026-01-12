#' sszContextBox
#'
#' @description
#' Function to generate a styled info box with optional title, text, and icon.
#' The layout uses a flex container for the icon and text, and applies
#' package-specific classes ("info-div", "info-text", "sszContextBox") for consistent styling.
#'
#' @param title A character string for the heading of the context box (displayed as h6).
#' @param text A character string for the body text of the context box.
#' @param icon Optional HTML tag for an icon. If `NULL`, no icon is displayed.
#'
#' @return A `shiny.tag` object representing the context box, ready to include in Shiny UI.
#' @export
#' @family shiny_widgets
#'
#' @examples
#' \dontrun{
#' sszContextBox(
#'   title = "No data available",
#'   text  = "Start a query to see results.",
#'   icon  = icons_ssz("info-help")
#' )
#' }
sszContextBox <- function(title, text, icon = NULL) {
  # Outer container
  box_div <- tags$div(
    class = "info-div",

    # Header bar with h2 title
    if (!is.null(title)) tags$div(
      class = "header-bar",
      h2(title)
    ),

    # Content box with icon + text
    tags$div(
      class = "content-box info-text",

      # Icon (optional)
      if (!is.null(icon)) icon,

      # Text content
      p(text)
    )
  )

  # Add a custom class for easy targeting if needed
  current_class <- box_div$attribs$class
  box_div$attribs$class <- paste(current_class, "sszContextBox")

  box_div
}
