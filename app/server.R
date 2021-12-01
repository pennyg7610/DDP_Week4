library(shiny)
library(purrr)

function(input, output, session) {
    
    # Combine the selected variables into a new data frame
    selectedData <- reactive({
        iris[, c(input$xcol, input$ycol)]
    })
    
    clusters <- reactive({
      selectedData()
    })
    
    
    output$plot1 <- renderPlot({
      
        plot(selectedData())
    })
    
}