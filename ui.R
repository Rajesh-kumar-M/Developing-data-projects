library(shiny)


shinyUI(fluidPage("Select the best car for your journey",
               tabPanel("Table",

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            helpText("Give information about your trip and the car that you want"), 
            numericInput('dis', 'Distance (in miles):', 50, min = 1, max = 1000), 
            numericInput('cost', 'Gasoline Price (per gallon):', 2.31, min = 2, max = 5, step=0.01), 
            numericInput('gas', 'Maximum expenditure on gasoline:', 60, min=1, max=1000), 
            checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)), 
            sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10), 
            sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10), 
            checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)) 
        ),

        # Show a plot of the generated distribution
        mainPanel(
            dataTableOutput('table')
        )
    )
),

)
)
