SidebarModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    numericInput(ns("number"), "Choose number", 1)
  )
}

SidebarModule <- function(input, output, session) {
  number <- reactive({
    input$number
  })
  return(list(
    number = number
  ))
}