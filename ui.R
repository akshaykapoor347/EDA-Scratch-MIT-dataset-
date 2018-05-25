

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(title = h4("Scratch Dataset")),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("varx", "select x axis", choices = c("Viewers"= 4,"Lovers"= 5, "Downloaders"= 6, "Sprites"= 7, "Scripts" = 8), selected = 5) ,
    br(),
    selectInput("vary", "select y axis", choices = c("Viewers"= 4,"Lovers"= 5, "Downloaders"= 6, "Sprites"= 7, "Scripts" = 8), selected = 6) ,
    
    br(),
    selectInput("typ", "Type P or H", choices = c("p","h"), selected = "p") ,
    
    br(),
    
    radioButtons("color", "select the color of abline", choices = c("black", "green", "yellow"), selected = "black")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("myhist")
    )
  )
)
)