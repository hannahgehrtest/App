# Server: Kreisauswahl

## FC: change name of plot?
## FC: kreis_plot_01 ?
output$shrink_plot_re <- renderPlot({
  pgsf %>% 
    filter(county_lab == input$kreis1) %>%
    ggplot(aes(x = midyear,
               y = eingtotal)) +
    geom_point() +
    geom_line() +
    labs(title = "Bitte einfügen",
         x = "Beschriftung") +
    theme_bw()
})