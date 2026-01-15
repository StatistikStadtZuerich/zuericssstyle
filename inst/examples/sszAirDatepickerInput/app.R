library(shiny)
library(shinyWidgets)
# airdatepicker demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  sszAirDatepickerInput(
    inputId = "airMonth",
    label = "Beispiel",
    dateFormat = "MM-yyyy",
    view = "years",
    minView = "months",
    autoClose = TRUE,
    ssz_icon = icons_ssz("download")
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
