#https://cran.r-project.org/web/packages/httr/httr.pdf
library(httr)
library(jsonlite)
library(shiny)
library(DT)

endpoint <- "https://api.covid19api.com/country/brazill/status/confirmed"

ui <- basicPage(
  h2("Dados API"),
  DT::dataTableOutput("idTabela"),
  textOutput("problema")
)

server <- function(input, output) {
  
  res_api <- GET(
    url = endpoint, 
    query = list(
      from = "2020-05-20T00:00:00Z",
      to = "2021-03-17T00:00:00Z"
    )
  )
  
  #Respostas de informacao (100-199),
  #Respostas de sucesso (200-299),
  #Redirecionamentos (300-399)
  #Erros do cliente (400-499)
  #Erros do servidor (500-599).
  #Ref: https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Status

  respostaAPI <- res_api$status_code

  if(respostaAPI == 200){
    #converter para um vetor de caracteres
    dadosCaracteres <- rawToChar(res_api$content)
    #converter para json
    dadosJson <- fromJSON(dadosCaracteres, flatten=TRUE)
    
    dados <- as.data.frame(dadosJson)
    
    output$idTabela = DT::renderDataTable({
      dados
    })
  }else{
    output$problema <- renderText({"Problema para trazer os dados"})
  }
}

shinyApp(ui, server)
