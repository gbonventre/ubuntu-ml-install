#bash script to install Python 3.7.4

# Install and update the basics
sudo apt update
sudo apt-get -y install software-properties-common
sudo apt-get -y install build-essential

#install open ssl
sudo apt-get -y install libssl-dev libffi-dev

#install zlib
sudo apt-get -y install zlib1g-dev

#install Git
sudo apt-get -y install git

# Install Python 3.7.4 from Source
# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar -xf Python-3.7.4.tgz
cd Python-3.7.4
./configure --enable-optimizations
make -j 8
sudo make altinstall

cd ~

# If all goes well this should print Python 3.7.4
python3.7 --version

# Install Python Package Manager Pip
sudo apt-get -y install python-pip
pip install --upgrade pip


#sudo apt-get -y install python3.7
#sudo apt-get -y install python-pip
#sudo apt-get -y install python-dev

#Install Python Development
sudo apt-get -y install python-dev

# Install Virtual Env
sudo apt install virtualenv

#Install Ipython
apt-get -y install ipython ipython-notebook

#Install Jupyter
pip install jupyter


#install curl
sudo apt-get -y install curl

# install screen
sudo apt-get -y install screen
sudo apt-get update && apt-get upgrade

#install Azure CLI
curl -sl httls://aka.ms/InstallAzureCLIDeb | sudo bash

#Install VS Code lightweight code editor
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders
