library(shiny)
library(dygraphs)

shinyUI(pageWithSidebar(
  headerPanel("Exchange rates on time"),
  
  sidebarPanel(
    checkboxGroupInput("currency", "Currency", c("USD" = "USD", "EUR" = "EUR")),
    dateInput("date", "Date:", value = "2013-10-10")
  ),
  
  mainPanel(
    dygraphOutput("dygraph"),
    hr(),
    textOutput("text")
  )
))