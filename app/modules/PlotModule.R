PlotModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    plotOutput(ns("plot")),
    shiny::tags$p(
      sprintf('App global var set to: %s', app_global_var)
    )
  )
}

PlotModule <- function(input, output, session, sidebar_args) {
  output$plot <- renderPlot({
    modes <- floor(sidebar_args$modes())
    dist <- unlist(lapply(
      seq(from = 0, to = (modes-1)*3, by = 3),
      function(x) rnorm(n = floor(2000/modes), mean = x)
    ))
    hist(
      dist, 
      breaks = seq(min(dist)-1, max(dist)+1, 0.5), 
      col = 'lightblue',
      main = sprintf('Distribution with %s modes', modes)
    )
  })
}