
uif <- function(id){
  
  tagList(
    numericInput(NS(id,"x"), "x", 0),
    numericInput(NS(id,"y"), "y", 1),
    numericInput(NS(id,"z", "z"), 2),
    textOutput(NS(id,"out"))
  )}


serverf<- function(id){
  
  moduleServer( id, function(input, output, session) {
    xy <- reactive(input$x - input$y)
    yz <- reactive(input$z + input$y)
    xyz <- reactive(xy() * yz())
    output$out <- renderText(paste0("Result: ", xyz()))
  })
}