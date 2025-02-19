library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      tags$img(src="logoR.png", height=100, width=100)
    )
  )
)

server <- function(input, output){
  
}

shinyApp(ui, server)
