library(shiny)

ui<- fluidPage(
  titlePanel("inputDate"),
  sidebarLayout(
    sidebarPanel(
      dateInput("idData", "Informe a data", format ="dd-mm-yyyy", language = "pt", autoclose = TRUE)
    ),
    mainPanel(
      verbatimTextOutput("idSaidaData")
    )
  )
)

server <- function(input, output){
  output$idSaidaData <- renderText({as.character(input$idData)})
}

shinyApp(ui, server)
  