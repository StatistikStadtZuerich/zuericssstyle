library(shiny)
library(reactable)

ui <- ssz_page(
  h1("Widget demo"),
  tagList(
    h2("Statische Tabelle"),
    reactable::reactable(
      iris,
      paginationType = "simple",
      class = "table-striped",
      language = reactable::reactableLang(
        noData = "Keine Einträge gefunden",
        pageNumbers = "{page} von {pages}",
        pagePrevious = "\u276e",
        pageNext = "\u276f"
      )
    ),
    h2("Interaktive Tabelle"),
    reactable::reactable(
      iris,
      paginationType = "simple",
      class = "table-hover",
      language = reactable::reactableLang(
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
