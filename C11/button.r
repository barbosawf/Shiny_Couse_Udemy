library(shiny)

ui <- fluidPage(
  titlePanel("Action Button"),
  sidebarLayout(
    sidebarPanel(
      actionButton("idBotao", "Clique no botao para atualizar a mensagem na tela", icon("refresh"))
    ),
    mainPanel(
      textOutput("idSaida")
    )
  )
)

server <- function(input, output){
  observeEvent(input$idBotao, {
    #todo o codigo que estiver dentro da observeEvent sera executado quando o botao for pressionado
    output$idSaida <- renderText("Mensagem que sera exibida quando o botao for pressionado")
  })
}

shinyApp(ui, server)
