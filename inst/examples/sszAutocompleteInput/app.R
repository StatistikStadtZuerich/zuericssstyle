library(shiny)
# autocomplete demo

opts <- sapply(1:100, function(i) paste0(sample(letters, 7), collapse = ""))

ui <- ssz_page(
  h1("Widget demo"),
  sszAutocompleteInput(
    "select",
    "Geben Sie einen Namen ein",
    opts
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
