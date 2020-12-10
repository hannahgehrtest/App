

# loading packages
library(shiny)
library(haven)
library(tidyverse)
library(shinythemes)
library(maps)
library(mapproj)

# ui
ui <- fluidPage(
  
  # choosing theme
  theme = shinytheme("flatly"),
  
  # title
  titlePanel("PGSF 2020"),
  
  # creating tabsets
  tabsetPanel(
    
    # tab1
    tabPanel(
      "Kreisauswahl", 
    sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "kreis1",
                  label = "Kreis auswählen:",
                  c("Potsdam" = "Potsdam",
                    "Berlin" = "Berlin Ost")
                  )
                 ),
    mainPanel(plotOutput("shrink_plot_re"))
                 )
             ),
   # tab2
   tabPanel(
    "Jahresauswahl", 
    sidebarLayout(
      sidebarPanel(
        sliderInput(inputId = "start2", 
                    label = "Jahr auswählen:",
                    min = 1970,
                    max = 1989,
                    value = 1970,
                    
                    sep = "")),
        mainPanel()
       )
     ),
   
   # tab3
   tabPanel(
     "Karte",
     sidebarLayout(
       sidebarPanel(
         sliderInput(inputId = "start3", 
                     label = "Jahr auswählen:",
                     min = 1970,
                     max = 1989,
                     value = 1970,
                     ticks = FALSE,
                     sep = "",
                     color = #D2691E)),
         mainPanel()
       )
     )
   )
   
   
   )
 

