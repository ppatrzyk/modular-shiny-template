NumberModuleUI <- function(id) {
  ns <- NS(id)
  tagList(
    textOutput(ns("processed_number"))
  )
}

NumberModule <- function(input, output, session, sidebar_args, multiply) {
  output$processed_number <- renderText({
    result <- sidebar_args$number() * multiply
    sprintf('Input multiplied by %s gives: %s', multiply, result)
  })
}