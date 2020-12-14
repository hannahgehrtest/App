

# loading packages
library(shiny)
library(haven)
library(tidyverse)
library(shinythemes)
library(maps)
library(mapproj)
library(shinyWidgets)


source('ui_kreisauswahl.R', local = TRUE, encoding = "utf-8")
source('ui_jahresauswahl.R', local = TRUE, encoding = "utf-8")


# ui
ui <- navbarPage("PGSF 2020",

  # choosing theme
  theme = shinytheme("flatly"),
  
  # Load tabPanels
  kreisauswahl,
  jahresauswahl,
  
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
                     sep = ""
                     )),
         mainPanel()
       )
     )

  )
   
 

