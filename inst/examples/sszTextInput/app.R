library(shiny)
# text input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszTextInput("suchfeld",
               "Name:"),
  br(),
  h1("Input"),
  textOutput("input")
)

server <- function(input, output, session) {
  # Our dataset
  output$input <- renderText(input$suchfeld)
}

shinyApp(ui, server)
