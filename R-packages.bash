#!/bin/bash
sudo apt install libopenblas-base
sudo R -e 'install.packages(c("tseriesChaos", "EMD", "forecast", "rmutil", "truncnorm"))'
