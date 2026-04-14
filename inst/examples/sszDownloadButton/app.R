library(shiny)
library(openxlsx)
# download demo

ui <- ssz_page(
  h1("Widget demo"),
  tags$div(
    id = "button-div",
    class = "button-div",
    sszActionButton(
      "action",
      "Abfrage starten",
    ),
    tags$div(
      id = "downloadWrapperId",
      class = "downloadWrapperDiv",
      sszDownloadButton("csvDownload",
        label = "CSV",
        image = icons_stzh()("download")
      ),
      sszDownloadButton("excelDownload",
        label = "XLSX",
        image = icons_stzh()("download")
      ),
      sszDownloadButton("downloadDownload",
        image = icons_stzh()("download")
      ),
      sszOgdDownload("ogdDownload",
        href = "https://data.stadt-zuerich.ch/",
        image = icons_stzh()("external-link")
      )
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

  output$downloadDownload <- downloadHandler(
    filename = function() {
      paste("data-", Sys.Date(), ".xlsx", sep = " ")
    },
    content = function(file) {
      write.xlsx(data, file)
    }
  )
}

shinyApp(ui, server)
