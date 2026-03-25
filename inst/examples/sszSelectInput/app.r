library(shiny)
# select input demo

ui <- ssz_page(
  h1("Widget demo"),
  sszSelectInput(
    "select",
    "Flughafen",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    selected = "LAX"
  ),
  sszSelectInput(
    "selectmultiple",
    "Flughafen (mehrere)",
    choices = c("HOU", "LAX", "JFK", "SEA"),
    multiple = TRUE
  ),
  br(),
  h2("Action"),
  uiOutput("choice"),
  uiOutput("choicemultiple")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderUI({
    req(input$select)
    tags$p(input$select)
  })

  output$choicemultiple <- renderUI({
    # input$selectmultiple can be NULL or a character vector
    sel <- input$selectmultiple
    tagList(
      tags$ul(
        lapply(sel, function(x) tags$li(x))
      )
    )
  })
}

shinyApp(ui, server)
