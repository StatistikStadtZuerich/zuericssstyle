library(shiny)
# action button demo

ui <- ssz_page(
  h1("Widget demo"),
  sszActionButton(
    "action",
    "Abfrage starten",
  ),
  br(),
  h1("Action"),
  textOutput("action")
)


server <- function(input, output, session) {
  # Observe the action button press
  observeEvent(input$action, {
    output$action <- renderText({
      "Abfrage gestartet"
    })
  })
}

shinyApp(ui, server)
