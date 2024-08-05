library(shiny)
library(icons)
library(here)

icons_ssz <- icon_set(here("man/icons"))

ui <- fluidPage(
  includeCSS(here::here("inst", "css", "sszThemeShiny.css")),
  h1("Widget demo"),
  sszActionButtonIcon(
    "action",
    "Abfrage starten",
    ssz_icon = img(icons_ssz("arrow-right"))
  ),
  br(),
  h1("Action"),
  textOutput("action")
)

server <- function(input, output, session) {
  # Observe the action button press
  observeEvent(input$action, {
    output$action <- renderText({
      "Abfrage gestartet"
    })
  })
}
shinyApp(ui, server)
