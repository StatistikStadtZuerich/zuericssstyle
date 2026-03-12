library(shiny)
# radio button demo

ui <- ssz_page(
  h1("Widget demo"),
  sszRadioButtons(
    inputId = "ButtonGroupLabel",
    label = "Flughafen",
    choices = c("HOU", "LAX", "JFK"),
    selected = "JFK"
  ),
  br(),
  sszRadioButtons(
    inputId = "ButtonGroupLabelHorizontal",
    label = "Flughafen",
    choices = c("HOU", "LAX", "JFK"),
    selected = "JFK",
    inline = TRUE
  ),
  h1("Selected"),
  textOutput("choice"),
  textOutput("choice_horizontal")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(input$ButtonGroupLabel)
  output$choice_horizontal <- renderText(input$ButtonGroupLabelHorizontal)
}

shinyApp(ui, server)
