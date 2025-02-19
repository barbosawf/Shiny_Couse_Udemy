library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      #radioButtons("radioId", "Selecione o seu sexo", choices = c("Masculino", "Feminino"), inline=FALSE)
      radioButtons("radioId", "Selecione o seu sexo", list("Opcao 1" = 1, "Opcao 2" = 2, "Opcao 3" = 3), selected = 2, inline=TRUE)
    ),
    mainPanel(
      verbatimTextOutput("idOpcaoSeleciona")
    )
  )
)

server <- function(input, output){
  output$idOpcaoSeleciona <- renderText({input$radioId})
}

shinyApp(ui,server)
