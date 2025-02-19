library(shiny)

ui <- fluidPage(
  
  fluidRow(
    column(width = 4,"Conteudo"),
    column( width = 4,"Conteudo"),
    column( width = 4,"Conteudo")
  ),
  
  fluidRow(
    column( width = 4,"Conteudo"),
    column( width = 4,"Conteudo"),
    column( width = 4,"Conteudo")
  )
)

server <- function(input, output) { 
  
}

shinyApp(ui, server)
  

  




