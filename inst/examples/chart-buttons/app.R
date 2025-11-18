library(shiny)
# button chart div demo

ui <- ssz_page(
  h1("Demo app: button for chart"),
  sidebarPanel(
    h3("something in the sidebar")
  ),
  mainPanel(
    h3("and something else in the main panel"),
    div(
      class = "ssz-chart-buttons",
      sszRadioGroupButtons(
        inputId = "choice_year",
        choices = c(2022, 2023, 2024)
      )
    )
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
