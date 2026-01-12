library(shiny)
# action button demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  sszContextBox(
    title = "Information mit Icon",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim.",
    icon = icons_ssz("info-help")
  ),
  sszContextBox(
    title = "Informationen ohne Icon",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim."
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
