apt-get install -y vim
cp /etc/apt/sources.list /etc/apt/sources.list.back
sed -i "s/us.archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org=3.2.11 mongodb-org-server=3.2.11 mongodb-org-shell=3.2.11 mongodb-org-mongos=3.2.11 mongodb-org-tools=3.2.11
# apt-get install -y mongodb-org=3.2.10 mongodb-org-server=3.2.10 mongodb-org-shell=3.2.10 mongodb-org-mongos=3.2.10 mongodb-org-tools=3.2.10

service mongod restart

sudo apt-get install redis-server -y
sudo apt-get install nodejs-legacy -y
sudo apt-get install -y git
sudo apt-get install -y nmap

####修改apache2 默认端口;不安装nginx直接注释掉即可。#####
apache2_ports_path=/etc/apache2/ports.conf
if [ -f ${apache2_ports_path} ]; then
	sed -i "s/80/81/g" ${apache2_ports_path}
	sed -i "s/443/444/g" ${apache2_ports_path}
	/etc/init.d/apache2 restart
fi
sudo apt-get install nginx-full -y
####修改apache2 默认端口;不安装nginx直接注释掉即可。#####

sudo apt-get install npm -y
sudo apt-get install zip -y
#nvm
apt install curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
source ~/.bashrc
nvm ls-remote

nvm install 6.9.4
npm install -g cnpm --registry=https://registry.npm.taobao.org
npm install -g supervisor
npm install -g node-inspector
npm install -g grunt
npm install -g gulp
npm install -g mocha
npm install -g bower
npm install -g pm2

# pre get install
# apt-get install -y vim
# apt-get install openssh-server
# sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config
# service ssh restart