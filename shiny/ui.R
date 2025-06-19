# ui.R
#
# This is the user-interface definition of a Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#    https://shiny.posit.co/
library(shiny)
library(shinydashboard)
library(plotly)

dashboardPage(
  dashboardHeader(title = "Migration nette – Dashboard"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Vue générale", tabName = "stats", icon = icon("globe")),
      menuItem("Graphique", tabName = "graph", icon = icon("chart-bar")),
      menuItem("Corrélation", tabName = "bubble", icon = icon("project-diagram")),
      sliderInput("selected_year", "Année :", min = 1950, max = 2023, value = 2023,
                  step = 1, animate = TRUE, sep = "")
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "stats",
              fluidRow(
                valueBoxOutput("top_country"),
                valueBoxOutput("bottom_country"),
                valueBoxOutput("selected_year")
              )
      ),
      
      tabItem(tabName = "graph",
              fluidRow(
                box(width = 12, plotOutput("migrationPlot", height = "600px"))
              )
      ),
      
      tabItem(tabName = "bubble",
              fluidRow(
                box(
                  width = 12, 
                  title = "Corrélation Taux de Fécondité vs Espérance de Vie",
                  status = "primary",
                  solidHeader = TRUE,
                  collapsible = TRUE,
                  p("Ce graphique illustre les relations entre le taux de fécondité, l'espérance de vie, et la taille de la population"),
                  p("Les données concernent les 20 pays avec les mouvements migratoires les plus marqués pour l'année sélectionnée."),
                  plotlyOutput("bubblePlot", height = "600px")
                )
              )
      )
    )
  )
)
