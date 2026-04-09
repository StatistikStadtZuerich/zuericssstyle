library(shiny)
# date range demo

ui <- ssz_page(
  h1("Widget demo"),
  sszDateRange("DateRange", "Datum auswählen",
    start = "2001-01-01",
    end = "2010-12-31",
    min = "2001-01-01",
    max = "2012-12-21",
    separator = icons_stzh()("calendar"),
    weekstart = 1
  ),
  br(),
  h2("Action"),
  uiOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderUI({
    req(input$DateRange)
    dates <- format(input$DateRange, "%d.%m.%Y")
    tags$p(paste(dates, collapse = " bis "))
  })
}

shinyApp(ui, server)
