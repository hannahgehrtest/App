

# loading packages
library(shiny)
library(haven)
library(tidyverse)
library(shinythemes)

# ui
ui <- fluidPage(
  
  theme = shinytheme("flatly"),
  
  # caption
  titlePanel("PGSF 2020"),
  
  # layout
  sidebarLayout(
    sidebarPanel(
      
      # legend
      
      
      # select year
      sliderInput(inputId = "start", 
                  label = "Jahreszahl auswählen:",
                  min = 1970,
                  max = 1989,
                  value = 1970),
      selectInput(inputId = "kreis",
                  label = "Kreis:",
                  c("Potsdam" = "Potsdam",
                    "Berlin" = "Berlin Ost")
                  )
    
      
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("First Tab",
                 plotOutput("shrink_plot_re")
        ),
        tabPanel("Second Tab")
      )
    )
  )
)
