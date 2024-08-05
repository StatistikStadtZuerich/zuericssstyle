library(shiny)
opts <- sapply(1:100, function(i) paste0(sample(letters, 7), collapse=""))
ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
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
