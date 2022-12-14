#' get_generic_css
#'
#' @description function to create a css file for the generic styling of html/shiny
#'
#' @param destination_filepath optional, defaults to "sszTheme.css" in the local
#' folder. if provided, give full path and filename, like "path/folder/file.css"
#'
#' @export
#'
#' @examples get_generic_css()
get_generic_css <- function(destination_filepath = "sszTheme.css") {
  origin <- "css/sszTheme.css"
  get_css_core(origin, destination_filepath)
}

#' get_shiny_css
#'
#' @description creates a css file for html and shiny widget styling
#'
#' @param destination_filepath optional, defaults to "sszThemeShiny.css" in the local
#' folder. if provided, give full path and filename, like "path/folder/file.css"
#'
#' @export
#'
#' @examples get_shiny_css()
get_shiny_css <- function(destination_filepath = "sszThemeShiny.css") {
  origin <- "css/sszThemeShiny.css"
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
