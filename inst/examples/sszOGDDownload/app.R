library(shiny)
# OGD button demo

ui <- ssz_page(
  h1("Widget demo"),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszOgdDownload(
      outputId = "ogdDown",
      label = "OGD",
      href = "https://data.stadt-zuerich.ch/",
      image = icons_stzh()("external-link")
    )
  )
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
