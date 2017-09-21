#!/bin/bash

#apt-get remove libreoffice-common

#apt-get remove unity-webapps-common

#apt-get install libappindicator1 libindicator7
#dpkg -i google-chrome-stable_current_amd64.deb
#apt-get -f install

#apt-get remove onboard deja-dup

apt-get install -y vim

# echo "deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main"  | tee /etc/apt/sources.list.d/ubuntukylin.list
cp /etc/apt/sources.list /etc/apt/sources.list.back
sed -i "s/us.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
# add-apt-repository ppa:webupd8team/java
add-apt-repository ppa:webupd8team/sublime-text-3
#add-apt-repository ppa:diesch/testing
#add-apt-repository ppa:nilarimogard/webupd8

#mongo3.4
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
#for 12.04
#echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu precise/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#for 14.04
#echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#for 16.04
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
apt-get update
apt-get install -y mongodb-org
service mongod start


apt-get install -y sogoupinyin
#apt-get install -y wps-office
# apt-get install -y oracle-java8-installer
apt-get install -y sublime-text-installer
#apt-get install -y classicmenu-indicator
#apt-get install -y syspeek


apt-get install -y vpnc git
apt-get install -y openssh-server

apt-get install -y unrar unzip
apt-get install -y subversion
apt-get install -y chromium-browser
# apt-get install mongodb
apt-get install -y redis-server
apt-get install -y nodejs-legacy
apt-get install -y npm
apt-get install -y nmap
apt-get install -y curl
apt-get install -y tree
apt-get install -y colordiff
apt-get install -y xclip
apt-get install -y android-tools-adb
apt-get install -y mysql-server
apt-get install -y mysql-workbench

##python for sci
#apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-sympy-doc python-sympy-doc python-nose python-nose-doc

##opencv
#mkdir opt
#cd opt
#wget http://jaist.dl.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.9/opencv-2.4.9.zip
#unzip opencv-2.4.9.zip && cd opencv-2.4.9
#apt-get install build-essential cmake libgtk2.0-dev pkg-config python-dev python-numpy libavcodec-dev libavformat-dev libswscale-dev
#mkdir release && cd release && cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
#make && make install

##BeautifulSoup
#apt-get install python-bs4

##Neurolab
#pip install neurolab

##R
#apt-get install r-base
#apt-get install r-base-dev

#nvm

sudo apt-get install build-essential libssl-dev
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh |bash
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

source $profile

nvm install v6.11.3 #Boron
nvm use v6.11.3
nvm alias v6.11.3 default


npm install -g cnpm --registry=https://registry.npm.taobao.org
npm install -g supervisor
npm install -g node-inspector
npm install -g grunt
npm install -g gulp
npm install -g mocha
npm install -g bower
npm install -g pm2

echo "greeter-show-manual-login=true" > /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf
echo "allow-guest=false" > /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf