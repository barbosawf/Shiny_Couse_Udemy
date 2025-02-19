library(shiny)

ui <- fluidPage(
 
  titlePanel("Bot�o de download"),
  sidebarLayout(
    sidebarPanel(
      downloadButton("downloadData", "Download")
    ),
    mainPanel(
    )
  )
)

server <- function(input, output) {
  datasetInput <- cars
  
  output$downloadData <- downloadHandler(
    filename = function() {
      "arquivo.csv"
    },
    content = function(file) {
      write.csv(datasetInput, file, row.names = TRUE)
    }
  )
}
shinyApp(ui, server)
