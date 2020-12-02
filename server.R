

# loading packages
library(shiny)
library(haven)
library(tidyverse)

# server
server <- function(input, output) {
  # data set
  pgsf <- read_dta("PGSFV2.dta")
  #
  output$shrink_plot_re <- renderPlot({
    pgsf %>% 
      filter(county_lab == input$kreis) %>%
      ggplot(aes(x = midyear,
             y = eingtotal)) +
     geom_point() +
      geom_line() +
      theme_bw()
  })

} 