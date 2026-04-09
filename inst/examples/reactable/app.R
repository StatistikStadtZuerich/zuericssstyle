library(shiny)
library(reactable)

ui <- ssz_page(
  h1("Widget demo"),
  tagList(
    h2("Static Table"),
    reactable(
      iris,
      paginationType = "simple",
      class = "table-striped",
      language = reactableLang(
        noData = "Keine Einträge gefunden",
        pageNumbers = "{page} von {pages}",
        pagePrevious = "\u276e",
        pageNext = "\u276f"
      )
    ),
    h2("Interactive Table"),
    reactable(
      iris,
      paginationType = "simple",
      class = "table-hover",
      language = reactableLang(
        noData = "Keine Einträge gefunden",
        pageNumbers = "{page} von {pages}",
        pagePrevious = "\u276e",
        pageNext = "\u276f"
      )
    )
  )
)

server <- function(input, output, session) {
  # Our dataset
}

shinyApp(ui, server)
