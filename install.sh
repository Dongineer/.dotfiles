echo "install lib for git"
yum install curl-devel expat-devel gettext-devel \
  openssl-devel zlib-devel


echo "install vimrc"
# https://github.com/amix/vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "install zsh!"
sudo yum -y install zsh
chsh -s /bin/zsh

echo "nvm install"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

source ~/.bashrc

nvm --version
nvm install v9.11
node -v
npm -v

echo "docker install"
sudo yum -y update

echo "docker & docker registery"
sudo yum -y install docker docker-registery
sudo service docker start
sudo service docker status

echo "redis container install"

docker pull redis
docker run --name willson-redis -d -p 6379:6379 redis

