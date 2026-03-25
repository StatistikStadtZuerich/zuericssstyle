library(shiny)
# action button demo

ui <- ssz_page(
  sszContextBox(
    title = "Information with Icon",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim.",
    icon = icons_stzh()("info-help-filled")
  ),
  sszContextBox(
    title = "Informationen without Icon",
    text = "Laboris laborum aute id laboris culpa esse aliquip nisi anim velit. Minim sunt eiusmod do laborum amet ut magna. Labore dolore id nostrud enim Lorem pariatur ad dolore id eiusmod adipisicing laboris laborum minim."
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
