# Data pre-processing ----
# Tweak the "am" variable to have nicer factor labels -- since this
# doesn't rely on any user inputs, we can do this once at startup
# and then use the value throughout the lifetime of the app

library(shiny)
library(dplyr)
irisData <- iris%>% group_by(Species)

# Define server logic to plot various variables against mpg ----
server <- function(input, output) {
    

    output$irisPlot <- renderPlot({
   

        if(input$Species == "setosa") {     
            ggplot(irisData, aes(x=Sepal.Width)) + geom_point(stat="identity", aes(fill=Category)) +
                labs(title="Setosa info") +
                theme(plot.title = element_text(face="bold", size = 17, vjust = 1.5)) +
                theme(legend.title = element_text(size=13)) +
                scale_y_continuous(labels = comma) 
        } else if(input$Sepal.Width == "versicolor") {
            ggplot(irisData, aes(x=Sepal.Width)) + geom_point(stat="identity", aes(fill=Category)) +
                labs(title="Number of Workers in Orange County by Sector, 1991") +
                theme(plot.title = element_text(face="bold", size = 17, vjust = 1.5)) +
                theme(legend.title = element_text(size=13)) +
                scale_y_continuous(labels = comma) 
      
        } else {
            ggplot(irisData, aes(x=Sepal.Width)) + geom_point(stat="identity", aes(fill=Category)) +
                labs(title="Number of Workers in Orange County by Sector, 2012") +
                theme(plot.title = element_text(face="bold", size = 17, vjust = 1.5)) +
                theme(legend.title = element_text(size=13)) +
                scale_y_continuous(labels = comma) 
        }    
        
                  
           
    })
    
}