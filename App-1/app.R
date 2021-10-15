library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      p("Create demographic maps with information from the 2010 US Census."),
      selectInput("select", h3("Choose a variable to display"), 
                  choices = list("Percent White" = 1, "Percent Black" = 2,
                                 "Percent Brown" = 3), selected = 1),
      sliderInput("slider2", h3("Range of Interest"),
                  min = 0, max = 100, value = c(0, 100))
      ),
    mainPanel()
    
  )
  
)

# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  
}

shinyApp(ui = ui, server = server)