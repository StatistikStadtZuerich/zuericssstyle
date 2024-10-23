library(shiny)
# download demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszDownloadButton("csvDownload",
      label = "csv",
      image = img(icons_ssz("download"))
    )
  )
)

server <- function(input, output, session) {
  # Download data
  data <- mtcars

  output$csvDownload <- downloadHandler(
    filename = function() {
      paste("data-", Sys.Date(), ".csv", sep = " ")
    },
    content = function(file) {
      write.csv(data, file)
    }
  )
}

shinyApp(ui, server)
