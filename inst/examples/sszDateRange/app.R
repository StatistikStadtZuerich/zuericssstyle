library(shiny)
# date range demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  sszDateRange("DateRange", "Datum:",
    start = "2001-01-01",
    end = "2010-12-31",
    min = "2001-01-01",
    max = "2012-12-21",
    separator = icons_ssz("calendar")
  ),
  br(),
  h1("Selected"),
  textOutput("choice")
)

server <- function(input, output, session) {
  # Our dataset
  output$choice <- renderText(format(input$DateRange, "%d.%m.%Y"))
}

shinyApp(ui, server)
