

server <- function(input, output) {
  
  # Histogram of the MtCar data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  
  output$distPlot <- renderPlot({
    
    x    <- mtcars$gear
    bins <- seq(min(x), max(x), length.out = input$boxes + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "white",
         xlab = "gears",
         main = "Histogram of gears")
    
  })
  
}
