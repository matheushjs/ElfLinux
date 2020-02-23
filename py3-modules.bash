echo "Don't execute as root!! [y/n]";
read p;

PACKAGES="
setuptools
wheel
";

pip3 install $PACKAGES;

PACKAGES="
numpy
matplotlib
pandas
bs4
scikit-learn
scipy
termcolor
seaborn
";

pip3 install $PACKAGES;
