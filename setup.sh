#!/bin/sh

mkdir Projects
cd Projects
git clone https://github.com/p-robot/como_command_line
git clone https://github.com/BDI-pathogens/OpenABM-Covid19


apt-get update -y
apt-get install r-base -y
apt-get install r-cran-ggplot2 r-cran-tidyverse r-cran-desolve -y
apt-get install libcurl4-openssl-dev libssl-dev libcurl4-gnutls-dev libxml2-dev -y

# Install XQuartz on client side.
# Make sure X11 forwarding is on in ssh config file.
apt-get install x11-apps -y

R -e 'dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE); .libPaths(Sys.getenv("R_LIBS_USER"))'
R -e 'install.packages("devtools")'
R -e 'install.packages("foreach")'
R -e 'install.packages("parallel")'
R -e 'install.packages("EasyABC")'
R -e 'install.packages("benchmarkme")'

R -e 'install.packages(doParallel)'




