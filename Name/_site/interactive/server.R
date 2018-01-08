#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
part1<-read_xlsx("part1.xlsx")
server<-function(input, output) {
  output$distPlot1<- renderLeaflet({
    df <- data.frame(part1$lat,part1$lon)
    names(df)<- c("lat","lng")
    m <- leaflet(df) %>%
      addTiles() %>%
      setView(lng = 120.565, lat = 24.279, zoom = 11)
    
    m %>% addCircles(radius= 200,color = "red", fill = TRUE ,popup = part1$ID) %>%
      addMarkers(lat=24.214746, lng=120.487120,popup = "台中火力發電廠")
  })
}