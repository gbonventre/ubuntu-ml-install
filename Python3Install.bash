#bash script to install Python 3.7.4 on Ubuntu 18.04.3 LTS

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

#install curl
sudo apt-get -y install curl

# Install Python 3.7.4 from Source
# https://linuxize.com/post/how-to-install-python-3-7-on-ubuntu-18-04/
sudo apt-get -y install build-essential zlib1g-dev libncurses5-dev libgdbm-dev
wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
tar -xf Python-3.7.4.tgz
cd Python-3.7.4
# The enable-optimizations flag turns on profile optimizations which add 20-40 minutes of install time but the Python Code executes about 10% faster
./configure --enable-optimizations
make -j 8
sudo make altinstall

cd ~

# If all goes well this should print Python 3.7.4
python3.7 --version

# Install Python Package Manager Pip
sudo apt-get -y install python3-pip
#pip install --upgrade pip


#sudo apt-get -y install python3.7
#sudo apt-get -y install python-pip
#sudo apt-get -y install python-dev

#Install Python Development
sudo apt-get -y install python3-dev

# Install Virtual Env
sudo pip3 install virtualenv
#sudo apt install virtualenv

#Install Ipython
sudo pip3 install ipython
#apt-get -y install ipython ipython-notebook

#Install Jupyter
sudo pip3 install jupyter

# Install pandas
sudo pip3 install pandas

# Install Scikit-learn
#sudo pip3 install scikit-learn
sudo pip3 install intel-scikit-learn

# PYODBC and SQL Server Related Install:
#https://docs.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver15
sudo su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
# Ubuntu 18.4
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
#Ubuntu 18.10
#curl https://packages.microsoft.com/config/ubuntu/18.10/prod.list > /etc/apt/sources.list.d/mssql-release.list
#Ubuntu 19.04
#curl https://packages.microsoft.com/config/ubuntu/19.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
exit
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql17
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get -y install unixodbc-dev
sudo pip3 install pyodbc



# Python ODBC for SQL 13.1
sudo apt-get install libc6 libstdc++6 libkrb5-3 libcurl3 openssl debconf unixodbc unixodbc-dev #install dependencies
sudo su
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/ubuntu/16.04/prod/pool/main/m/msodbcsql/msodbcsql_13.1.9.2-1_amd64.deb > /etc/apt/sources.list.d/mssql-release.list
exit
sudo apt-get update
sudo ACCEPT_EULA=Y apt-get install msodbcsql13  # or 13.1??
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo apt-get -y install unixodbc-dev
sudo pip3 install pyodbc





#psycopg2 for PostgreSQL
sudo pip3 install psycopg2-binary


# install screen
sudo apt-get -y install screen

#apt-get update && apt-get upgrade
sudo apt-get -y update
sudo apt-get -y upgrade


#Install VS Code lightweight code editor
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

#install Azure CLI
#curl -sl httls://aka.ms/InstallAzureCLIDeb | sudo bash
# OR
# https://blogs.msdn.microsoft.com/pkirchner/2017/04/28/installing-azure-cli-2-0-workaround-for-error-installing-pyyaml/
#sudo apt-get update
#sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg
#curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
#AZ_REPO=$(lsb_release -cs)
#echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | sudo tee /etc/apt/sources.list.d/azure-cli.list
#sudo apt-get update
#sudo apt-get install azure-cli
# OR
pip install --user azure-cli


# https://stackoverflow.com/questions/3402168/permanently-add-a-directory-to-pythonpath
