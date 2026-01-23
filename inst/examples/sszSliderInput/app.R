library(shiny)
# slider input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszSliderInput("choose_numbers",
    "Input",
    value = c(30, 60),
    min = 0,
    max = 100
  ),
  sszSliderInput("choose_number",
    "Single Input",
    value = c(30),
    min = 0,
    max = 100
  ),
  br(),
  h1("Input"),
  textOutput("input"),
  textOutput("inputsingle")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderText(input$choose_numbers)
  output$inputsingle <- renderText(input$choose_number)
}

shinyApp(ui, server)
