#!/bin/bash

function install_packages {
	apt install -y libopenblas-base libopenblas-dev; # Some linear algebra packages require this
	apt install -y r-cran-curl; # Idk which packages need this
	apt install -y libxml2 libxml2-dev; # Required by roxygen
	apt install -y libfreetype6-dev; # required by rgl
};

sudo bash -c "$(declare -f install_packages); install_packages";

packages="R.utils tseriesChaos EMD forecast rmutil truncnorm rgl viridis devtools elfDistr ggamma ollggamma microbenchmark"
for package in $packages; do
	sudo R -q -e "install.packages('$package')";
done

#Just tests
for package in $packages; do
	sudo R -q -e "require('$package')";
done
