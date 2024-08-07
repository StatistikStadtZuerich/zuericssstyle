#' add_zcss_deps
#'
#' @param tag tag/tagList, e.g. a fluidPage
#'
#' @return fluidPage/tag with ssz css dependencies added
#' @export
#'
#' @examples inst/examples/sszActionButton/app.r
add_zcss_deps <- function(tag) {
  shiny::tagList(
    htmltools::htmlDependency(
      "zuericssstyle",
      packageVersion("zuericssstyle"),
      src = c(file = "css"),
      stylesheet = c("sszTheme.css", "sszThemeShiny.css"),
      package = "zuericssstyle"
    ),
    tag
  )
}
