#' Add zuericssstyle CSS dependencies to an HTML tag
#'
#' Attach the package CSS (from `inst/css/`) as html dependencies to a tag or tagList. This
#' ensures styles are available when rendering HTML,
#' pkgdown sites, htmlwidgets, or Shiny apps.
#'
#' @param tag A htmltools tag or tagList (for example the UI returned by
#'   `shiny::fluidPage()`). The returned value is a `tagList` that includes
#'   the provided `tag` and the package dependencies.
#'
#' @return A `tagList` containing `tag` plus the CSS htmlDependencies.
#' @export
#'
#' @examples
#' \dontrun{
#' inst / examples / ssz_deps_with_bootstrap / app.r
#' }
#'
add_zcss_deps <- function(tag) {
  shiny::tagList(
    tag,
    htmltools::htmlDependency(
      "zuericssstyle",
      packageVersion("zuericssstyle"),
      src = c(file = "css"),
      stylesheet = "ssz_shiny.min.css",
      package = "zuericssstyle"
    )
  )
}
