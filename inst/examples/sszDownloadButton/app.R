library(shiny)
library(openxlsx)
# download demo

icons_ssz <- icons::icon_set(here::here("inst", "examples", "icons"))

ui <- ssz_page(
  h1("Widget demo"),
  tags$div(
    id = "downloadWrapperId",
    class = "downloadWrapperDiv",
    sszDownloadButton("csvDownload",
      label = "CSV",
      image = icons_ssz("download")
    ),
    sszDownloadButton("excelDownload",
      label = "Excel",
      image = icons_ssz("download")
    ),
    sszDownloadButton("excelDownload",
      label = "none"
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

  output$excelDownload <- downloadHandler(
    filename = function() {
      paste("data-", Sys.Date(), ".xlsx", sep = " ")
    },
    content = function(file) {
      write.xlsx(data, file)
    }
  )
}

shinyApp(ui, server)
