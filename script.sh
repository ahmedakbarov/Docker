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
    sudo yum install docker-ce docker-ce-cli containerd.io
    sudo systemctl start docker
# Verify that Docker Engine - Community is installed correctly
sudo docker run hello-world