# server.R
#
# This is the server logic of a Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#    https://shiny.posit.co/

# server.R
# server.R
library(shiny)
library(readxl)
library(dplyr)
library(ggplot2)

shinyServer(function(input, output) {
  
  # Fonction de chargement + nettoyage des données
  load_and_clean_data <- function() {
    file_path <- "../data/Dem_1950-2023.xlsx"  # ajuste le chemin si nécessaire
    
    data_estimates <- read_excel(file_path, sheet = "Estimates")
    colnames(data_estimates) <- as.character(data_estimates[12, ])
    
    data_clean <- data_estimates[-(1:12), ] %>% 
      filter(`Type` == "Country/Area") %>%
      
      
      rename(
        Country = `Region, subregion, country or area *`,
        Year = Year,
        NetMigration = `Net Number of Migrants (thousands)`
      ) %>%
      filter(grepl("^[A-Za-z]", Country)) %>%
      mutate(
        Year = as.character(Year),
        NetMigration = as.numeric(NetMigration)
      )
    
    return(data_clean)
  }
  
  # Reactive : wrapper autour de ta fonction
  data <- reactive({
    load_and_clean_data()
  })
  
  # Affichage du graphique
  output$migrationPlot <- renderPlot({
    df <- data()
    
    df_year <- df %>% 
      filter(Year == as.character(input$selected_year)) %>%
      filter(!is.na(NetMigration)) %>%
      arrange(desc(NetMigration)) %>%
      top_n(20, wt = abs(NetMigration))  # Top 20 mouvements les plus marqués
    
    ggplot(df_year, aes(x = reorder(Country, NetMigration), y = NetMigration, fill = NetMigration > 0)) +
      geom_bar(stat = "identity") +
      coord_flip() +
      scale_fill_manual(values = c("red", "steelblue"), guide = FALSE) +
      labs(
        title = paste("Migration nette par pays en", input$selected_year),
        x = "Pays",
        y = "Migration nette (en milliers)"
      ) +
      theme_minimal()
  })
  
})
