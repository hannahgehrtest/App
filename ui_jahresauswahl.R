# Jahresauswahl
jahresauswahl <- tabPanel(
  "Jahresauswahl", 
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "start2", 
                  label = "Jahr auswählen:",
                  min = 1970,
                  max = 1989,
                  value = 1970,
                  sep = "",
      )),
    mainPanel()
  )
)