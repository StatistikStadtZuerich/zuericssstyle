library(shiny)

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  sszSelectInput(
    "select",
    "Destination",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    selected = "LAX"
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

