library(shiny)
# radio group button demo (from shinyWidgets)
icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  includeCSS("test.css"),
  h1("Widget demo"),
  sszRadioGroupButtons(
    inputId = "years",
    choices = 2022:2024,
    selected = 2022 # default value
  ),

  # add buttons to check our buttons are still ok
  sszActionButton(
    "action",
    "Abfrage starten",
  ),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszDownloadButton("csvDownload",
                      label = "csv",
                      image = img(icons_ssz("download"))
    ),
    sszOgdDownload(
      outputId = "ogdDown",
      label = "OGD",
      href = "https://data.stadt-zuerich.ch/",
      image = img(icons_ssz("external-link"))
    )
  ),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$ButtonGroupLabel)
}

shinyApp(ui, server)
