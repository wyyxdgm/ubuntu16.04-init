#!/bin/bash

sudo apt-get remove libreoffice-common

sudo apt-get remove unity-webapps-common

sudo apt-get install libappindicator1 libindicator7
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install

sudo apt-get remove onboard deja-dup

sudo apt-get install vim

sudo echo "deb http://archive.ubuntukylin.com:10006/ubuntukylin trusty main" > /etc/apt/sources.list.d/ubuntukylin.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
sudo sed -i "s/us.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
# sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:diesch/testing
sudo add-apt-repository ppa:nilarimogard/webupd8

#mongo3.0
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
#for u12
#echo "deb http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.3 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#for u14
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.3 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update

#3.2
sudo apt-get install -y mongodb-org=3.2.10 mongodb-org-server=3.2.10 mongodb-org-shell=3.2.10 mongodb-org-mongos=3.2.10 mongodb-org-tools=3.2.10

sudo apt-get install sogoupinyin
sudo apt-get install wps-office
# sudo apt-get install oracle-java8-installer
sudo apt-get install sublime-text-installer
sudo apt-get install classicmenu-indicator
sudo apt-get install syspeek


sudo apt-get install vpnc git
sudo apt-get install axel
sudo apt-get install openssh-server
sudo apt-get install cmake qtcreator
sudo apt-get install exfat-fuse
sudo apt-get install lnav
sudo apt-get install unrar unzip
sudo apt-get install subversion
sudo apt-get install chromium-browser
# sudo apt-get install mongodb
sudo apt-get install redis-server
sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo apt-get install nmap
sudo apt-get install tree
sudo apt-get install colordiff
sudo apt-get install wine1.6
sudo apt-get install xclip
sudo apt-get install android-tools-adb
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench

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

sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
sudo npm install -g supervisor
sudo npm install -g node-inspector
sudo npm install -g grunt
sudo npm install -g mocha
