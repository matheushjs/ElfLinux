#!/bin/bash

function install_packages {
	apt install -y libopenblas-base libopenblas-dev; # Some linear algebra packages require this
	apt install -y r-cran-curl; # Idk which packages need this
	apt install -y libxml2 libxml2-dev; # Required by roxygen
};

sudo bash -c "$(declare -f install_packages); install_packages";
sudo R -e 'install.packages(c("tseriesChaos", "EMD", "forecast", "rmutil", "truncnorm", "rgl", "viridis", "devtools"))'
