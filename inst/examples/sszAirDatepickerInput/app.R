library(shiny)
library(shinyWidgets)
# airdatepicker demo

ui <- ssz_page(
  h1("Widget demo"),
  sszAirDatepickerInput(
    inputId = "airMonth",
    label = "Datum auswählen",
    value = Sys.Date(),
    dateFormat = "dd-MM-yyyy",
    view = "days",
    minView = "days",
    autoClose = TRUE,
    ssz_icon = icons_stzh()("calendar")
  ),
  br(),
  h2("Action"),
  uiOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  observeEvent(input$airMonth, {
    output$choice <- renderUI(p(format(input$airMonth, "%d.%m.%Y")))
  })
}

shinyApp(ui, server)
