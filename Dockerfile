FROM r-base:latest

RUN R -e "install.packages('shiny', repos='https://cloud.r-project.org/')"

ADD app /root/app

COPY Rprofile.site /usr/lib/R/etc/

EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/app')"]