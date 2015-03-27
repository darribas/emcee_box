#!/usr/bin/env bash

if [ ! -f Miniconda-3.6.0-Linux-x86_64.sh ]; then
    wget http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh
    chmod +x Miniconda-3.6.0-Linux-x86_64.sh
fi


./Miniconda-3.6.0-Linux-x86_64.sh -b -p /home/vagrant/miniconda
export PATH=/home/vagrant/miniconda/bin:$PATH
echo "export PATH=/home/vagrant/miniconda/bin:$PATH" >> ~/.bashrc
source ~/.bashrc

# Setup pystack environment to load up with external file
conda create --name pystack pandas
source activate pystack

conda install numpy scipy matplotlib ipython-notebook pip

pip install emcee

sudo apt-get install -y git

git clone https://github.com/farr/plotutils.git
cd plotutils
python setup.py install
cd ..

pip install triangle_plot

if [[ ! -d /vagrant/notebooks/galmassproxy ]]; then
    git clone https://github.com/farr/galmassproxy.git /vagrant/notebooks/galmassproxy
fi

