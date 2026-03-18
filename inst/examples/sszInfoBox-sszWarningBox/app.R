library(shiny)
# action button demo

icons_ssz <- icons::icon_set(here::here("inst", "icons"))

ui <- ssz_page(
  sszInfoBox(
    title = "A message with the wrong sender will not be answered and will be deleted.",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim.",
    icon = icons_ssz("info-help-filled")
  ),
  sszWarningBox(
    title = "Title Error",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim.",
    icon = icons_ssz("important-warning-filled")
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
