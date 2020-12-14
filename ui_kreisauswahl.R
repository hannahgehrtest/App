# Kreisauswahl
kreisauswahl <- tabPanel(
  "Kreisauswahl", 
  # choosing slider color
  setSliderColor(rep("#9999ff", 2), c(1,2)),
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "kreis1",
                  label = "Kreis auswählen:",
                  c("Potsdam" = "Potsdam",
                    "Berlin" = "Berlin Ost")
      ),
      # NEW
      selectizeInput(inputId = "test_selectize", label = "Test, Test, Test", 
                     choices = c("Potsdam" = "Potsdam",
                                 "Berlin" = "Berlin Ost",
                                 "Genthin" = "Genthin"), 
                     selected = NULL, multiple = TRUE,
                     options = list(
                       placeholder = 'Kreis eingeben',
                       onInitialize = I('function() { this.setValue(""); }')
                     )
      )
    ),
    mainPanel(plotOutput("shrink_plot_re"))
  )
)