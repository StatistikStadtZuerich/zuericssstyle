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
    "select1",
    "Destination (Multiple)",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    multiple = TRUE
  ),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$select)
}

shinyApp(ui, server)
