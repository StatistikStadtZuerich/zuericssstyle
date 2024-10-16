library(shiny)
# slider input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszSliderInput("choose_number",
    "Input:",
    value = c(30, 60),
    min = 0,
    max = 100
  ),
  br(),
  h1("Input"),
  textOutput("input")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderText(input$choose_number)
}

shinyApp(ui, server)
