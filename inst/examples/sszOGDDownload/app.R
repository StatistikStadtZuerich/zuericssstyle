library(shiny)

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszOgdDownload(outputId = "ogdDown",
                   label = "OGD",
                   href = "https://data.stadt-zuerich.ch/",
                   image = img(icons_ssz("external-link"))
    )
  )
)

server <- function(input, output, session) {
}

shinyApp(ui, server)
