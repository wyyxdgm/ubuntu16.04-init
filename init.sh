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
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo add-apt-repository ppa:diesch/testing
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update

sudo apt-get install sogoupinyin
sudo apt-get install wps-office
sudo apt-get install oracle-java8-installer
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
sudo apt-get install mongodb
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

#python for sci
#sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-sympy-doc python-sympy-doc python-nose python-nose-doc

sudo npm install -g cnpm --registry=https://registry.npm.taobao.org
sudo npm install -g supervisor
sudo npm install -g node-inspector
sudo npm install -g grunt
sudo npm install -g mocha
