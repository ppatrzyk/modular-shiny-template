ui <- fluidPage(
  
  titlePanel("Test"),
  
  sidebarLayout(
    
    sidebarPanel(
      SidebarModuleUI("sidebar")
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Number 1", NumberModuleUI("number1")),
        tabPanel("Number 2", NumberModuleUI("number2"))
      )
    )
    
  )
)


