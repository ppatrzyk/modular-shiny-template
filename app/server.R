server <- function(input, output) {
  SideBar <- callModule(SidebarModule, "sidebar")
  callModule(NumberModule, "number1", sidebar_args = SideBar, multiply = 1.5)
  callModule(NumberModule, "number2", sidebar_args = SideBar, multiply = 2)
  callModule(PlotModule, "plot", sidebar_args = SideBar)
}