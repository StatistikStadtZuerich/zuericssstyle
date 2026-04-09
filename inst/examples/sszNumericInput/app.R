library(shiny)
# numeric input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszNumericInput(
    "number",
    "Zahl",
    4
  ),
  br(),
  h2("Action"),
  uiOutput("input")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderUI(p(input$number))
}

shinyApp(ui, server)
