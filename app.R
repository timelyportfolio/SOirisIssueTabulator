library(shiny)
library(tabulator)

ui <- fluidPage(
  selectInput("data", "Data", choices = c("mtcars", "iris")),
  tabulatorOutput("table"))

server <- function(input, output, session) {
  output$table <- renderTabulator(
    tabulator(get(input$data)))}

shinyApp(ui, server)
