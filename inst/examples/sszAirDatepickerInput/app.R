library(shiny)
library(shinyWidgets)
# airdatepicker demo

icons_ssz <- icons::icon_set(here::here("inst", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  sszAirDatepickerInput(
    inputId = "airMonth",
    label = "Beispiel",
    value = Sys.Date(),
    dateFormat = "dd-MM-yyyy",
    view = "days",
    minView = "days",
    autoClose = TRUE,
    ssz_icon = icons_ssz("calendar")
  ),
  br(),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  observeEvent(input$airMonth, {
    output$choice <- renderText(format(input$airMonth, "%d-%m-%Y"))
  })
}

shinyApp(ui, server)
