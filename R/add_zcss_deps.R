#' Add zuericssstyle CSS and icon dependencies to an HTML tag
#'
#' Attach the package CSS (from `inst/css/`) and the package icons
#' (from `inst/icons/`) as html dependencies to a tag or tagList. This
#' ensures styles and icon assets are available when rendering HTML,
#' pkgdown sites, htmlwidgets, or Shiny apps.
#'
#' @param tag A htmltools tag or tagList (for example the UI returned by
#'   `shiny::fluidPage()`). The returned value is a `tagList` that includes
#'   the provided `tag` and the package dependencies.
#'
#' @return A `tagList` containing `tag` plus the CSS and icons htmlDependencies.
#' @export
#'
#' @examples
#' \dontrun{
#' library(shiny)
#' ui <- add_zcss_deps(fluidPage(
#'   tags$h1("Demo"),
#'   tags$img(src = "icons/download.svg", alt = "download")
#' ))
#' shinyApp(ui, server = function(input, output) {})
#' }
add_zcss_deps <- function(tag) {
  shiny::tagList(
    tag,
    htmltools::htmlDependency(
      "zuericssstyle",
      packageVersion("zuericssstyle"),
      src = c(file = "css"),
      stylesheet = "ssz_shiny.min.css",
      package = "zuericssstyle"
    ),
    # Expose package icons so HTML/htmlwidgets/pkgdown can resolve their paths
    htmltools::htmlDependency(
      "zuericssstyle-icons",
      packageVersion("zuericssstyle"),
      src = c(file = "icons"),
      package = "zuericssstyle"
    )
  )
}
