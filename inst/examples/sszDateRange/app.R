library(shiny)
library(icons)
library(here)

icons_ssz <- icon_set(here("man/icons"))

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  sszDateRange("DateRange", "Datum:",
               start  = "2001-01-01",
               end    = "2010-12-31",
               min    = "2001-01-01",
               max    = "2012-12-21",
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
