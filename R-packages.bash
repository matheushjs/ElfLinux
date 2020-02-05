#!/bin/bash
sudo apt install -y libopenblas-base libopenblas-dev r-cran-curl
sudo R -e 'install.packages(c("tseriesChaos", "EMD", "forecast", "rmutil", "truncnorm"))'
