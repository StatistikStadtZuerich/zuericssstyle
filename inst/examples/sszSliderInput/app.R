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
  h2("Action"),
  uiOutput("input"),
  uiOutput("inputsingle")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderUI({
    vals <- input$choose_numbers
    tagList(
      tags$p(vals[1], " bis ", vals[2])
    )
  })

  output$inputsingle <- renderUI({
    tags$p(input$choose_number)
  })
}

shinyApp(ui, server)
