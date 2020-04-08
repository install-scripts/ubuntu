#!/bin/bash
# Docker Engine on Ubuntu supports overlay2, aufs and btrfs storage drivers.
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
#TODO: Change arch if needed.
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
#apt-cache madison docker-ce
#sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io


# $ curl -fsSL https://get.docker.com -o get-docker.sh
# $ sudo sh get-docker.sh
#  sudo usermod -aG docker your-user
