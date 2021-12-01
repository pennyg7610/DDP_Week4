library(shiny)

ui <- fluidPage(
    
    # App title ----
    titlePanel("Iris Versicolor Information"),
    
    # Sidebar panel for inputs ----
    
    sidebarLayout(
    
    sidebarPanel(
        
        # Input: Selector for variable to plot against mpg ----
        selectInput("Species", "Species:", 
                    choices = irisData$Species),
        

        
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(   
                   
                   # Output: Plot of the requested variable against mpg ----
                   plotOutput("irisPlot")
                   
    )
    ))
