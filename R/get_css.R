#' get_generic_css
#'
#' @description function to create a css file for the generic styling of html/shiny according to the CI/CD of the city of Zurich
#'
#' @param destination_filepath optional, defaults to "ssz.css" in the local
#' folder. if provided, give full path and filename, like "path/folder/file.css"
#'
#' @export
#'
#' @examples get_generic_css()
get_generic_css <- function(destination_filepath = "ssz.css") {
  origin <- "css/ssz.css"
  get_css_core(origin, destination_filepath)
}

#' get_shiny_css
#'
#' @description creates a css file for html and shiny widget styling according to the CI/CD of the city of Zurich;
#' not recommended, use ssz_page for a styled fluid page, or add add_zcss_deps around your ui
#'
#' @param destination_filepath optional, defaults to "ssz_shiny.min.css" in the local
#' folder. if provided, give full path and filename, like "path/folder/file.css"
#'
#' @export
#'
#' @examples get_shiny_css()
get_shiny_css <- function(destination_filepath = "ssz_shiny.min.css") {
  origin <- "css/ssz_shiny.min.css"
  get_css_core(origin, destination_filepath)

}

#' get_css_core
#'
#' @description checks if destination filepath is valid and copies chosen css file to destination
#'
#' @param origin path to internal css, "css/sszThemeShiny.css" or "css/sszTheme.css"
#' @param destination_filepath where to copy the file to
get_css_core <- function(origin, destination_filepath) {
  # check if directory exists
  if (!(file.exists(dirname(destination_filepath)))) {
    stop("no valid destination filename provided, ",
         "use something like: path/folder/file.css")
  }
  file.copy(from = system.file(origin, package = "zuericssstyle"),
            to = destination_filepath)

}
