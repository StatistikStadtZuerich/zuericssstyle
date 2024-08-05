library(shiny)
library(shinyWidgets)

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  sszAirDatepickerInput(
    inputId = "airMonth",
    label = "Beispiel",
    dateFormat = "MM-yyyy",
    view = "years",
    minView = "months",
    autoClose = TRUE
  ),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  observeEvent(input$airMonth, {
    output$choice <- renderText(format(input$airMonth, "%m-%Y"))
  })
}
shinyApp(ui, server)
