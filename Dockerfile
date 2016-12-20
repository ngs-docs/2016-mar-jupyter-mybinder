FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN sh -c 'echo "deb http://cran.rstudio.com/bin/linux/debian jessie-cran3/" >> /etc/apt/sources.list'

RUN apt-get update
RUN apt-get install -y r-base libzmq3-dev

COPY install-irkernel.R /home/install-irkernel.R

RUN R --no-save < /home/install-irkernel.R
USER main

