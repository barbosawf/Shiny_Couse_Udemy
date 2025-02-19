library(shiny)

ui <- fluidPage(
  titlePanel("Aula SliderInput"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("idSlider", "Informe a quantidade de dados da amostra", min = 0, max = 1000, step = 100, value = 500)
    ),
    mainPanel(textOutput("idSaidaSlider"))
  )
)

server <- function(input, output){
  output$idSaidaSlider <- renderText({ input$idSlider})
}

shinyApp(ui, server)
