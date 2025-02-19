library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("checkboxId", "Selecione os produtos", list("TV" = 1, "CELULAR" = 2, "NOTEBOOK" = 3, "SOM" = 4))
    ),
    mainPanel(
      actionButton("salvaProdutos", "Clique")
    )
  )
)

server <- function(input, output){
  observeEvent(input$salvaProdutos, {
    opcoesSelecionados <- as.data.frame(input$checkboxId)
    print(opcoesSelecionados)
  })
}
shinyApp(ui, server)
