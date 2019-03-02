# import necessary libraries
library(shiny)

# source shiny module files
sapply(list.files(pattern = 'Module\\.R', recursive = TRUE), source)

# objects available to all modules can be defined here
app_global_var <- 666