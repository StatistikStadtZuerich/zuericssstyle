library(shiny)
# radio group button demo (from shinyWidgets)

ui <- ssz_page(
  includeCSS("test.css"),
  h1("Widget demo"),
  sszRadioGroupButtons(
    inputId = "years",
    choices = 2022:2024,
    selected = 2022 # default value
  ),
  #actionButton("bla", "bla"),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$ButtonGroupLabel)
}

shinyApp(ui, server)
