library(shiny)

shinyServer(function(input, output) {
       output$Total1 <- renderText({input$numeric * 7.82190})
       
       output$Plot1 <- renderPlot({
          vX<- c(0:500000)
          total<- vX * 7.82190
          both<- data.frame(vX,total)
          plot(vX, total, xlab = "USD", ylab= "Conversion Rate", xlim = c(0,50), ylim = c(7.82190,400), type = "l")
            })
      
  })