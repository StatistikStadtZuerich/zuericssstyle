library(shiny)
# radio group button demo (from shinyWidgets)

ui <- ssz_page(
  h1("Widget demo"),
  sszRadioGroupButtons(
    inputId = "years",
    choices = 2022:2024,
    selected = 2022 # default value
  ),
  br(),
  h2("Action"),
  uiOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderUI(p(input$years))
}

shinyApp(ui, server)
