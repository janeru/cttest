#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
library(readxl)

ui<-fluidPage(h3("臺灣中部地區鄰近火力發電廠的空品測站"),
              leafletOutput("distPlot1"))
