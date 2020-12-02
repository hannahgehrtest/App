

# installing packages
install.packages(shiny)
install.packages(haven)

# loading packages
library(shiny)
library(haven)

# ui
ui <- fluidPage(
  
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
      # map
    )
  )
)
