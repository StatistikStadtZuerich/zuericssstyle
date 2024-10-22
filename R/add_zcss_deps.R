#' add_zcss_deps
#'
#' @param tag tag/tagList, e.g. a fluidPage
#'
#' @return fluidPage/tag with ssz css dependencies added, including shiny widget stylings
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
