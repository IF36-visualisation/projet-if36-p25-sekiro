# server.R
#
# This is the server logic of a Shiny web application.
# You can run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#    https://shiny.posit.co/

library(shiny)
library(shinydashboard)
library(readxl)
library(dplyr)
library(ggplot2)
library(plotly)
library(scales)

function(input, output) {
  
  load_and_clean_data <- function() {
    path <- "../data/Dem_1950-2023.xlsx"
    data <- read_excel(path, sheet = "Estimates")
    colnames(data) <- as.character(data[12, ])
    data <- data[-(1:12), ]
    
    data %>%
      filter(Type == "Country/Area") %>%
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
  }
  
  data <- reactive({
    load_and_clean_data()
  })
  
  filtered_data <- reactive({
    data() %>%
      filter(Year == as.character(input$selected_year)) %>%
      filter(!is.na(NetMigration))
  })
  
  output$top_country <- renderValueBox({
    top <- filtered_data() %>% slice_max(NetMigration, n = 1)
    country_name <- ifelse(top$Country == "United States of America", "USA", top$Country)
    migration_value <- round(top$NetMigration)
    label <- ifelse(nchar(country_name) > 20, paste0(substr(country_name, 1, 20), "..."), country_name)
    
    valueBox(
      value = tags$span(title = top$Country, label),
      subtitle = paste("Solde migratoire le plus élevé (", migration_value, "k)"),
      icon = icon("arrow-up"),
      color = "blue"
    )
  })
  
  output$bottom_country <- renderValueBox({
    bottom <- filtered_data() %>% slice_min(NetMigration, n = 1)
    country_name <- ifelse(bottom$Country == "United States of America", "USA", bottom$Country)
    migration_value <- round(bottom$NetMigration)
    label <- ifelse(nchar(country_name) > 20, paste0(substr(country_name, 1, 20), "..."), country_name)
    
    valueBox(
      value = label,
      subtitle = paste("Solde migratoire le plus faible (", migration_value, "k)"),
      icon = icon("arrow-down"),
      color = "red"
    )
  })
  
  output$selected_year <- renderValueBox({
    valueBox(
      value = input$selected_year,
      subtitle = "Année sélectionnée",
      icon = icon("calendar"),
      color = "green"
    )
  })
  
  output$migrationPlot <- renderPlot({
    top20 <- filtered_data() %>%
      arrange(desc(abs(NetMigration))) %>%
      head(20)
    
    ggplot(top20, aes(x = reorder(Country, NetMigration), y = NetMigration, fill = NetMigration > 0)) +
      geom_bar(stat = "identity") +
      coord_flip() +
      scale_fill_manual(values = c("red", "steelblue"), guide = FALSE) +
      labs(
        title = paste("Migration nette par pays en", input$selected_year),
        x = "Pays",
        y = "Migration nette (en milliers)"
      ) +
      theme_minimal() +
      theme(axis.text.y = element_text(size = 10))
  })
  
  output$bubblePlot <- renderPlotly({
    top20 <- filtered_data() %>%
      arrange(desc(abs(NetMigration))) %>%
      head(20)
    
    top20_enriched <- data() %>%
      filter(
        Year == input$selected_year,
        Country %in% top20$Country
      ) %>%
      mutate(
        TFR = as.numeric(`Total Fertility Rate (live births per woman)`),
        LifeExp = as.numeric(`Life Expectancy at Birth, both sexes (years)`),
        Population = as.numeric(`Total Population, as of 1 July (thousands)`),
        Country = ifelse(Country == "United States of America", "USA", Country)
      ) %>%
      filter(!is.na(TFR), !is.na(LifeExp), !is.na(Population))
    
    lm_model <- lm(TFR ~ LifeExp, data = top20_enriched)
    prediction <- data.frame(
      LifeExp = seq(min(top20_enriched$LifeExp), max(top20_enriched$LifeExp), length.out = 100)
    )
    prediction$TFR <- predict(lm_model, newdata = prediction)
    
    p <- ggplot(top20_enriched, aes(x = LifeExp, y = TFR, size = Population, color = Country,
                                    text = paste0(Country, "<br>Espérance de vie : ", round(LifeExp, 1),
                                                  "<br>Fécondité : ", round(TFR, 2),
                                                  "<br>Population : ", round(Population / 1e3, 1), "M"))) +
      geom_point(alpha = 0.8) +
      geom_line(data = prediction, aes(x = LifeExp, y = TFR), inherit.aes = FALSE,
                color = "black", linetype = "dashed", size = 1) +
      scale_size_continuous(range = c(5, 20), name = "Population (k)") +
      labs(
        x = "Espérance de vie à la naissance (ans)",
        y = "Taux de fécondité (enfants par femme)",
        color = "Pays"
      ) +
      theme_minimal()
    
    ggplotly(p, tooltip = "text")
  })
  
  
}
