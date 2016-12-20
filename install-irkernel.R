install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'),
                 repos = c('http://cran.us.r-project.org'))

devtools::install_github('IRkernel/IRkernel')

IRkernel::installspec()  # to register the kernel in the current R installation
