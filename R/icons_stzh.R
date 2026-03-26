#' Package icons for zuericssstyle
#'
#' Convenience helper that returns an icon set pointing to the package's
#' bundled `inst/icons/` directory. This saves callers from writing the
#' `icons::icon_set(system.file(...))`.
#'
#' @return An object produced by [icons::icon_set()]. Use it in places
#'   that expect an icon-producing function, e.g. `image = icons_stzh()("name")`.
#' @examples
#' if (requireNamespace("icons", quietly = TRUE)) {
#'   icons_stzh()
#' }
#' @export
icons_stzh <- function() {
  if (!requireNamespace("icons", quietly = TRUE)) {
    stop("The 'icons' package is required to use icons_stzh(). Please install with install.packages('icons').",
      call. = FALSE
    )
  }
  icons::icon_set(system.file("icons", package = "zuericssstyle"))
}
