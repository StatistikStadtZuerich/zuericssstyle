library(shiny)
# this example app has the ssz css stuff added but unlike the ssz_page has the
# bootstrap css still there

ui <- add_zcss_deps(fluidPage(
  h1("Widget demo"),
  sszActionButton(
    "action",
    "Abfrage starten",
  ),
  br(),
  h1("Action"),
  textOutput("action")
))

server <- function(input, output, session) {
  # Observe the action button press
  observeEvent(input$action, {
    output$action <- renderText({
      "Abfrage gestartet"
    })
  })
}

shinyApp(ui, server)
