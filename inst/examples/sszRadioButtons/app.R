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
  sszRadioButtons(
    inputId = "ButtonGroupLabelHorizontal",
    label = "Flughafen",
    choices = c("HOU", "LAX", "JFK"),
    selected = "JFK",
    inline = TRUE
  ),
  br(),
  h2("Action"),
  uiOutput("choice"),
  uiOutput("choice_horizontal")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderUI(p(input$ButtonGroupLabel))
  output$choice_horizontal <- renderUI(p(input$ButtonGroupLabelHorizontal))
}

shinyApp(ui, server)
