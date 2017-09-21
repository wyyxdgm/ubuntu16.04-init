
sudo apt-get install build-essential libssl-dev
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash

source $profile

nvm install v6.11.3 #Boron
nvm use v6.11.3
nvm alias v6.11.3 default