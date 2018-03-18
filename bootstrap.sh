#!/usr/bin/env bash
echo "----------------------------"
echo "Updating"
echo "----------------------------"
sudo apt-get -y -q update
# Uncomment for Upgrading - Takes Longer
#sudo apt-get upgrade
echo "----------------------------"
echo "Install and Configture vim"
echo "----------------------------"
sudo apt-get -y -q install vim
sudo cp /vagrant_data/.vimrc /home/ubuntu
sudo cp /vagrant_data/.vimrc /root/
echo "----------------------------"
echo "Install unzip"
echo "----------------------------"
sudo apt-get -y -q install unzip
echo "----------------------------"
echo "Install pip and python3-tk"
echo "----------------------------"
sudo apt-get -y -q install python3-pip
sudo apt-get -y -q install python3-tk
echo "----------------------------"
echo "Install pyenv"
echo "----------------------------"
sudo apt-get -y -q install python3-venv
echo "----------------------------"
echo "Create and Activate Virtual Environment"
echo "----------------------------"
pyvenv developEnv
source developEnv/bin/activate
pip install --upgrade pip
echo "----------------------------"
echo "Install Specified Dependencies in VirtualEnv"
echo "----------------------------"
pip install -r /Prog2/requirements.txt
echo "----------------------------"
echo "Install and configure git"
echo "----------------------------"
sudo apt-get -y -q install git
git config --global user.name "rachit.ranjan16"
git config --global user.email "rachit.ranjan93@gmail.com"
echo "----------------------------"
echo "Get Dataset"
echo "----------------------------"
chmod +x /Prog2/big_data/datasets/get_datasets.sh
./Prog2/big_data/datasets/get_datasets.sh
