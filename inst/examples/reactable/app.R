library(shiny)
library(reactable)
# text input demo

ui <- ssz_page(
  h1("Widget demo"),
  reactable(iris,
    paginationType = "simple",
    language = reactableLang(
      noData = "Keine Einträge gefunden",
      pageNumbers = "{page} von {pages}",
      pagePrevious = "\u276e",
      pageNext = "\u276f"
    )
  )
)

server <- function(input, output, session) {
  # Our dataset
}

shinyApp(ui, server)
