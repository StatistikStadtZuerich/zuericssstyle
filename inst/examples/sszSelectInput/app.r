library(shiny)
# select input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszSelectInput(
    "select",
    "Destination",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    selected = "LAX"
  ),
  sszSelectInput(
    "selectmultiple",
    "Destination (Multiple)",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    multiple = TRUE
  ),
  br(),
  h1("Selected"),
  textOutput("choice"),
  textOutput("choicemultiple")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$select)
  output$choicemultiple <- renderText(input$selectmultiple)
}

shinyApp(ui, server)
