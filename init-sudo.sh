#!/bin/bash

#sudo apt-get remove libreoffice-common

#sudo apt-get remove unity-webapps-common

#sudo apt-get install libappindicator1 libindicator7
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#sudo apt-get -f install

#sudo apt-get remove onboard deja-dup

sudo apt-get install -y vim

# sudo echo "deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main"  | sudo tee /etc/apt/sources.list.d/ubuntukylin.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
sudo sed -i "s/us.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
# sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/sublime-text-3
#sudo add-apt-repository ppa:diesch/testing
#sudo add-apt-repository ppa:nilarimogard/webupd8

#mongo3.0
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
#for u12
#echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.3 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#for u14
#echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.3 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#for u16
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update

#3.2
sudo apt-get install -y mongodb-org=3.2.11 mongodb-org-server=3.2.11 mongodb-org-shell=3.2.11 mongodb-org-mongos=3.2.11 mongodb-org-tools=3.2.11
sudo service mongod start
sudo apt-get install -y sogoupinyin
#sudo apt-get install -y wps-office
# sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y sublime-text-installer
#sudo apt-get install -y classicmenu-indicator
#sudo apt-get install -y syspeek


sudo apt-get install -y vpnc git
sudo apt-get install -y openssh-server

sudo apt-get install -y unrar unzip
sudo apt-get install -y subversion
sudo apt-get install -y chromium-browser
# sudo apt-get install mongodb
sudo apt-get install -y redis-server
sudo apt-get install -y nodejs-legacy
sudo apt-get install -y npm
sudo apt-get install -y nmap
sudo apt-get install -y tree
sudo apt-get install -y colordiff
sudo apt-get install -y xclip
sudo apt-get install -y android-tools-adb
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-workbench

##python for sci
#sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-sympy-doc python-sympy-doc python-nose python-nose-doc

##opencv
#mkdir opt
#cd opt
#wget http://jaist.dl.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.9/opencv-2.4.9.zip
#unzip opencv-2.4.9.zip && cd opencv-2.4.9
#sudo apt-get install build-essential cmake libgtk2.0-dev pkg-config python-dev python-numpy libavcodec-dev libavformat-dev libswscale-dev
#mkdir release && cd release && cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
#make && sudo make install

##BeautifulSoup
#sudo apt-get install python-bs4

##Neurolab
#pip install neurolab

##R
#sudo apt-get install r-base
#sudo apt-get install r-base-dev

#nvm
sudo apt install curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh |sudo bash
source ~/.bashrc
nvm ls-remote

sudo nvm install 6.9.4

sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
sudo npm install -g supervisor
sudo npm install -g node-inspector
sudo npm install -g grunt
sudo npm install -g gulp
sudo npm install -g mocha
sudo npm install -g bower
sudo npm install -g pm2

sudo echo "greeter-show-manual-login=true" > /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
sudo echo "allow-guest=false" > /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf