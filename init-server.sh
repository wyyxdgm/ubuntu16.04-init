sudo apt-get install -y vim
sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
sudo sed -i "s/us.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sudo sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" |sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org=3.2.11 mongodb-org-server=3.2.11 mongodb-org-shell=3.2.11 mongodb-org-mongos=3.2.11 mongodb-org-tools=3.2.11
#sudo apt-get install -y mongodb-org=3.2.10 mongodb-org-server=3.2.10 mongodb-org-shell=3.2.10 mongodb-org-mongos=3.2.10 mongodb-org-tools=3.2.10

sudo service mongod restart

sudo apt-get install redis-server -y
sudo apt-get install nodejs-legacy -y
sudo apt-get install -y git
sudo apt-get install -y nmap
sudo apt-get install nginx-full -y
sudo apt-get install npm -y
sudo apt-get install zip -y
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


if [ ! -f ~/.ssh/id_rsa ] ; then
	echo 'ssh-keygen ...'
	ssh-keygen
fi


#pre get install
# sudo apt-get install -y vim
# sudo apt-get install openssh-server
# sudo sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config
# sudo service ssh restart