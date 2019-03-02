SidebarModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    numericInput(ns("number"), "Pick any number", 1, step = 0.1),
    numericInput(ns("modes"), "Number of modes", 2, min = 1, max = 10, step = 1)
  )
}

SidebarModule <- function(input, output, session) {
  number <- reactive({
    input$number
  })
  modes <- reactive({
    input$modes
  })
  return(list(
    number = number,
    modes = modes
  ))
}