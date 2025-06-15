# ui.R
#
# This is the user-interface definition of a Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#    https://shiny.posit.co/
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Évolution des migrations nettes (1950–2023)"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("selected_year",
                  "Sélectionner une année :",
                  min = 1950,
                  max = 2023,
                  value = 2023,
                  step = 1,
                  sep = "",
                  animate = TRUE)
    ),
    
    mainPanel(
      plotOutput("migrationPlot")
    )
  )
))

