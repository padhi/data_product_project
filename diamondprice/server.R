#
#Data product developement final project -Shiny web application
#
#Author: Ayuta Padhi
# 
#Server logic implementation(server.R)
#

library(shiny)
library(ggplot2)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
  output$plot2 <- renderPlot({
          diamonds <- subset(diamonds, color == input$color & carat >= input$carat)
          ggplot(aes(x = carat, y = price), data = diamonds) + 
                  geom_point(alpha = 0.5, size = 1, position = 'jitter',aes(color=cut)) +
                  ggtitle('Price of Diamond filtered by Carat and Color')
         
  })
  output$info <- renderText({
          if (length(input$plot_hover$x) > 0){
            paste0("carat :", input$plot_hover$x, "\nprice:", input$plot_hover$y)
          } else {
            paste0("Hover over a point to see the information")   
          }
  })
  
})
