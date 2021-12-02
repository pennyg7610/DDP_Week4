library(shiny)
library(purrr)
library(dplyr)

function(input, output, session) {
      iris.dataset= iris
       iris.dataset$setosa <- iris.dataset$Species=="setosa"
       iris.dataset$virginica <- iris.dataset$Species == "virginica"
       iris.dataset$versicolor <- iris.dataset$Species == "versicolor"
       iris.dataset
#filter data then plot  
data <- reactive({
  req(input$species_list)
 df<-iris.dataset%>% select( Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)%>% filter(iris.dataset$Species %in% input$species_list)
  
})

#plot    
    output$plot1 <- renderPlot({
              boxplot(data())
    })
}

# 
# iris.dataset<- iris[, c(input$xcol, input$ycol)]
# iris.dataset$setosa <- iris.dataset$Species=="setosa"
# iris.dataset$virginica = iris.dataset$Species == "virginica"
# iris.dataset$versicolor = iris.dataset$Species == "versicolor"
# iris.datase