library(shiny)

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  sszNumericInput("number",
                  "Zahl",
                  4),
  br(),
  h1("Input"),
  textOutput("input")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderText(input$number)
}
shinyApp(ui, server)
