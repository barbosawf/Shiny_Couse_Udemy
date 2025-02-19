library(shiny)

ui <- fluidPage(
  titlePanel("Aula sobre estruturacao"),
  
  sidebarLayout(position = "right",
    sidebarPanel(
      h2("Nessa area ficarao os dados de input")
    ),
    
    mainPanel(
      h2("Aqui serao colocados os elementos de saida de dados")
    )
  )
)

server <- function(input, output){
  
}

shinyApp(ui, server)