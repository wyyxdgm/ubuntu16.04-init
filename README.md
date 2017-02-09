
#step 1 安装server包.
curl -o- https://raw.githubusercontent.com/wyyxdgm/ubuntu16.04-init/master/init-server.sh|sudo bash

说明：
	执行脚本会安装的包如下：
	apt安装的包有：
		vim、apt源-》aliyun，mongodb 3.2.11、redis-server、nodejs-legacy、git、nmap、nginx-full、nvm、
	npm包有：
		cnpm、supervisor、node-inspector、grunt、gulp、mocha、bower、pm2


#step 2 安装desktop包.（desktop会安装多一些的包。）
curl -o- https://raw.githubusercontent.com/wyyxdgm/ubuntu16.04-init/master/init.sh|sudo bash

#ubuntu桌面版sublime汉化
./subl-chinese/sublime_imfix.sh
#后续遇到ubuntu桌面版sublime升级，重新汉化输入
./subl-chinese/when_update.sh