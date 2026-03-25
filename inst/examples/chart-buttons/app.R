library(shiny)
# button chart div demo

ui <- ssz_page(
  h1("Widget demo"),
  h3("This is a centered title", style = "text-align: center;"),
  div(
    class = "ssz-chart-buttons",
    sszRadioGroupButtons(
      inputId = "choice_year",
      choices = c(2022, 2023, 2024)
    )
  ),
  br(),
  h2("Action"),
  uiOutput("action")
)

server <- function(input, output, session) {
  # Observe the action button press
  observeEvent(input$choice_year, {
    output$action <- renderUI({
      p(input$choice_year)
    })
  })
}

shinyApp(ui, server)
