#! /bin/bash
#remove old versions of docker
sudo yum remove docker \
                 docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
#SET UP THE REPOSITORY
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
  sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# INSTALL DOCKER ENGINE - COMMUNITY
    sudo yum -y install docker-ce docker-ce-cli containerd.io
    sudo systemctl start docker
# Verify that Docker Engine - Community is installed correctly
sudo docker run hello-world
#Insall Git
yum -y install git
#configure git in your machine
git clone 
cd ~/Docker 
git remote set-url origin https://github.com/ahmedakbarov/Docker.git
git pull origin master
id=$[(( ( RANDOM % 99 )  + 99 ))]
$id
docker build -t myhellowordimage:$id ./
docker run -d -p 5000:5000 --name myhellowordcontainer-$id myhellowordimage:$id 