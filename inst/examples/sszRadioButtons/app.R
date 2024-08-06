library(shiny)

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
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
