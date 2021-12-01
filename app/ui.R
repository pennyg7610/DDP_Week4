
library(shiny)

vars <- names(iris)


pageWithSidebar(
    headerPanel('Iris Summary Calculations'),
    sidebarPanel(
        selectInput('xcol', 'X Variable', vars[5] ),
        selectInput('ycol', 'Y Variable', vars, selected = vars[[3]])
   
    ),
    mainPanel(

        column(5, "Choose a Y Variable on the side panel to display a simple box plot summary calculation of the data by species."),
        plotOutput('plot1')
    )
)