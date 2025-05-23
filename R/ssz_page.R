#' ssz_page
#'
#' @description
#' Function to use instead of fluidPage that has the ssz css styling applied
#'
#' @param ... ui content
#'
#' @return ui with ssz styling applied
#' @export
#'
#' @examples
#' \dontrun{
#' inst / examples / sszActionButton / app.r
#' }
ssz_page <- function(...) {
  add_zcss_deps(shiny::fluidPage(...))
}


#' ssz_page_without_bootstrap
#'
#' @description
#' Function to use instead of fluidPage that has the ssz css styling applied and the bootstrap css removed
#'
#'
#' @param ... ui content
#'
#' @return ui with ssz styling applied
#' @export
#'
ssz_page_without_bootstrap <- function(...) {
  ui <- shiny::fluidPage(...)
  deps <- htmltools::findDependencies(ui)
  deps_names <- vapply(deps, `[[`, "name", FUN.VALUE = character(1))
  bs_dep <- which(deps_names == "bootstrap")
  # Remove CSS, we still need js
  deps[[bs_dep]]$stylesheet <- NULL
  ui <- shiny::tagList(deps, ui)
  add_zcss_deps(ui)
}
