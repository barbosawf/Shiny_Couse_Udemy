#ui <- ui = fluidPage(theme = shinytheme("united"),
#theme = "mytheme.css",
library(shinythemes)
library(shiny)
ui = fluidPage(
  theme = shinytheme("cerulean"),
  sidebarPanel(
    textInput("txt", "Text input:", "text here"),
    sliderInput("slider", "Slider input:", 1, 100, 30),
    actionButton("action", "Button"),
    actionButton("action2", "Button2", class = "btn-primary")
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Tab 1"),
      tabPanel("Tab 2")
    )
  )
)

server = function(input, output) {}

shinyApp(ui, server)