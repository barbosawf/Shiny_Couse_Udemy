library(shiny)

ui <- fluidPage(
    titlePanel("Numeric Input"),
    
    sidebarLayout(
      sidebarPanel(
        numericInput("idEntradaNumerica", "Informe um numero", 0, min = 0, max = 100, step = 5)
      ),

    mainPanel(
      verbatimTextOutput("idSaida", placeholder = TRUE)
    )
  )
)

server <- function(input, output){
  output$idSaida <- renderText({input$idEntradaNumerica})
}

shinyApp(ui, server)
