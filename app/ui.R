ui <- fluidPage(
  
  titlePanel("Modular Shiny Template"),
  
  sidebarLayout(
    
    sidebarPanel(
      SidebarModuleUI("sidebar")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Number 1", NumberModuleUI("number1")),
        tabPanel("Number 2", NumberModuleUI("number2")),
        tabPanel("Plot", PlotModuleUI("plot"))
      )
    )
    
  )
)