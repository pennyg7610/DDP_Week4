library(shiny)
library(purrr)

function(input, output, session) {
    selectedData <- reactive({
       iris.dataset<- iris[, c(input$xcol, input$ycol)]
    })
        clusters <- reactive({
      selectedData()
    })
        output$plot1 <- renderPlot({
              plot(selectedData())
    })
    }