#
#Data product developement final project -Shiny web application
#
#Author: Ayuta Padhi
# 
#User interface implementation(ui.R)
#

library(shiny)
library(ggplot2)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Diamond Price Based on Color & Carat"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
          sidebarPanel(
                  
                  helpText("Select Diamond Size, Color or Both"),
                  sliderInput('carat', 'Carat', min=0.1, max=5, value=c(0.2,5.1), step=0.1),
                  radioButtons('color', 'Color:', c("D"='D', "E"='E', "F" = 'F', "G"='G',"H"='H',"I"='I','J'='J'), selected = c('D'),inline = TRUE)
                 ),
          mainPanel(
                  h3("Diamond Price"),
                  plotOutput("plot2",hover = "plot_hover"),
                  verbatimTextOutput("info")
          )
  )))