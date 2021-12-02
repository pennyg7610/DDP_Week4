
library(shiny)



pageWithSidebar(
    h1('Iris Summary Calculations'),
 
        selectInput(inputId = "species_list", 
                    label = "Choose Species", 
                    list("setosa","virginica", "versicolor" )),

  
        plotOutput('plot1')
    )


