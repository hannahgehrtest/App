

# loading packages
library(shiny)
library(haven)
library(tidyverse)
library(shinythemes)

# ui
ui <- fluidPage(
  
  theme = shinytheme("flatly"),
  
  
  titlePanel("PGSF 2020"),
  

  tabsetPanel(
    tabPanel(
      "Tab", 
    sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "kreis",
                  label = "Kreis:",
                  c("Potsdam" = "Potsdam",
                    "Berlin" = "Berlin Ost")
                  )
                 ),
    mainPanel(plotOutput("shrink_plot_re"))
                 )
             ),
   tabPanel(
    "Tab 2", 
    sidebarLayout(
      sidebarPanel(
        sliderInput(inputId = "start", 
                    label = "Jahreszahl auswählen:",
                    min = 1970,
                    max = 1989,
                    value = 1970)),
        mainPanel()
       )
     )
   )
 )

