library(bslib)
library(shiny)
# bslib cards demo
one_card <- card(
  card_header("A header"),
  card_body(
    markdown("Some text with a [link](https://github.com)")
  ),
  card_footer("a footer")
)
ui <- ssz_page(
  h1("Cards demo"),
  h2("one card"),
  one_card,
  br(),
  h2("two cards"),
  layout_column_wrap(
    one_card,
    one_card,
  ),
  h2("three cards"),
  layout_column_wrap(
    one_card,
    one_card,
    one_card
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
