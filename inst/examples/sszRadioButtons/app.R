library(shiny)
# radio button demo

ui <- ssz_page(
  h1("Widget demo"),
  sszRadioButtons(
    inputId = "ButtonGroupLabel",
    label = "Flughafen",
    choices = c("HOU", "LAX", "JFK"),
    selected = "JFK" # default value
  ),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$ButtonGroupLabel)
}

shinyApp(ui, server)
