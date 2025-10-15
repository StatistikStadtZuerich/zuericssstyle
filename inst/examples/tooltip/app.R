library(dplyr)
library(ggiraph)
library(ggplot2)
library(shiny)
# tooltip demo with ggiraph
gg <- penguins |>
  tibble::rownames_to_column() |>
  mutate(tooltip = glue::glue(
    "<div class='tooltip-container'>
            <div class='tooltip-title'>
              Penguin ID: {rowname}
            </div>
            <hr>
            <div class='tooltip-content'>
              <div class='tooltip-row'>
                <span class='tooltip-label'>species:</span>
                <span class='tooltip-value'>{species}
              </div>
              <div class='tooltip-row'>
                  <span class='tooltip-label'>island:</span>
                  <span class='tooltip-value'>{island} </span>
              </div>
              <div class='tooltip-row'>
                  <span class='tooltip-label'>body mass:</span>
                  <span class='tooltip-value'>{body_mass}</span>
              </div>
            </div>
          </div>"
  )) |>
  ggplot(
    aes(
      x = bill_len,
      y = flipper_len,
      color = species,
      data_id = rowname,
      tooltip = tooltip
    )
  ) +
  geom_point_interactive(size = 2, hover_nearest = TRUE) +
  labs(
    title = "Scatterplot with tooltip",
    subtitle = "Example",
    x = "Bill Length",
    y = "Flipper Width"
  )

ui <- ssz_page(
  h1("Demo app: button for chart"),
  h3("and something else in the main panel"),
  girafeOutput("plot")
)

server <- function(input, output, session) {
  output$plot <- renderGirafe({
    girafe(
      ggobj = gg,
      options = list(
        # placeholder is required as otherwise the border appears thick black
        opts_tooltip(css = ""),
        # deal with default toolbar (save as png etc)
        opts_toolbar(
          saveaspng = FALSE,
          hidden = c("selection")
        ),
        opts_zoom(max = 1),
        # specify styling of element one hovers over
        opts_hover(css = "filter: brightness(85%);"),
        # prevent selection (only applicable for mobile)
        opts_selection(type = "none"),
        opts_sizing(rescale = TRUE)
      )
    )
  })
}

shinyApp(ui, server)
