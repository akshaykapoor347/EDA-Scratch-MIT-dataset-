

library(shiny)
scratch <- read.csv("1.csv")


shinyServer(function(input, output) {
   
  output$myhist <- renderPlot({
    
    inputa <- as.numeric(input$varx)
    inputb <- as.numeric(input$vary)
    x <- scratch[ ,inputa]
    y <- scratch[ ,inputb]
    model <- lm(y~x,data=scratch)
    
    
    plot(x,y, col = "red",type =input$typ ,xlab = paste(names(scratch[inputa])), ylab = paste(names(scratch[inputb])),
         main = c(paste(names(scratch[inputa])),"vs", paste(names(scratch[inputb]))))
    abline(lm(y~x, data = scratch), col = input$color, lwd = 2)
    legend("topright", bty="n", legend=paste("R sq is", format(summary(model)$r.squared, digits = 3))) 
    
    
  }
    
  )
    
    
  })
  

