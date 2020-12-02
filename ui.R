

# installing packages
install.packages(shiny)


# loading packages
library(shiny)


# ui
ui <- fluidPage(
  
  # caption
  titlePanel("PGSF 2020"),
  
  # layout
  sidebarLayout(
    sidebarPanel(
      
      # legend
      
      
      # select year
      sliderInput(inputId = pgsf_app$start, 
                  label = "Jahreszahl auswählen:",
                  min = 1970,
                  max = 1989,
                  value = 1970),
    
      
    ),
    mainPanel(
      # map
    )
  )
)
