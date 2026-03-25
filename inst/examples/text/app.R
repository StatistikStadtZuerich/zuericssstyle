library(shiny)

ui <- ssz_page(
  h1("Widget demo"),
  tagList(
    h2("Paragraph"),
    p("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."),
    h2("Ordered List"),
    tags$ol(
      tags$li("Erster Punkt"),
      tags$li("Zweiter Punkt")
    ),
    h2("Unordered List"),
    tags$ul(
      class = "dashed-list",
      tags$li("Erster Punkt"),
      tags$li("Zweiter Punkt")
    ),
    h2("Hyperlink"),
    tags$a(href = "https://stadt-zuerich.ch/", "Statistik"),
    h2("Paragraph with Hyperlink and bold Strings"),
    p(
      "Lorem ipsum dolor sit ",
      strong(class = "bold-text", "amet, consetetur sadipscing elitr,"),
      ",sed diam nonumy eirmod",
      a(
        href = "https://stadt-zuerich.ch/",
        target = "_blank",
        rel = "noopener noreferrer",
        "tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua."
      )
    )
  )
)

server <- function(input, output, session) {
  # Our dataset
}

shinyApp(ui, server)
