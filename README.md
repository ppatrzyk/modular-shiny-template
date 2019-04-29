# Modular Shiny Template

This is a basic template for a modularized Shiny app. 

## App structure

This repo illustrates file organization for a shiny app that uses [modules](https://shiny.rstudio.com/articles/modules.html).

Overview of structure:

<img src="https://raw.githubusercontent.com/ppatrzyk/modular-shiny-template/master/modular-shiny.svg?sanitize=true">

## Docker

I included a basic `Dockerfile` for running a shiny app. In order to build and run an image run the following from the main repo directory:

```
docker build . --tag 'shinyapp:latest'
docker run -d -p 3838:3838 shinyapp:latest
```

Notes:

* Some R packages may require installing additional system libraries,
* If you plan to host more apps, you may consider using [Shiny Server image](https://github.com/rocker-org/shiny).