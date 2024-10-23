library(shiny)
# OGD button demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszOgdDownload(
      outputId = "ogdDown",
      label = "OGD",
      href = "https://data.stadt-zuerich.ch/",
      image = img(icons_ssz("external-link"))
    )
  )
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
