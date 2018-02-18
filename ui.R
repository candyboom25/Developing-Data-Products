library(shiny)

shinyUI(fluidPage(
    titlePanel("Exchange Rate from USD to HKD"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "Please input number (USD)", value = 0, min = 0, max = 500000, step = 0.01),
            submitButton("Submit")
        ),
        mainPanel(
            h3("Graph of Points"),
            plotOutput("Plot1"),
            textOutput("Total1")
        )
    )
))
