#!/bin/bash

read -p "this will install many services such as nano, apt-utils, docker, docker container, portainer, and it will update your system. Do you wish to continue (y/n)?" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [ -x "$(command -v apt-get)" ]; then
    sudo apt install apt-utils -y
    sudo apt install nano -y
    sudo apt install neofetch -y
    sudo apt install apache2-utils -y
    sudo apt install jq -y
    sudo apt install openjdk-17-jdk
    sudo apt update
    sudo apt-get full-upgrade -y
    else
    echo "unsupported package manager"
    exit
    fi
else
echo "installation canceled"
exit
fi
read -p "do you want to install docker, docker-compose, and portainer? (y/n)" -n 1 -r
echo
if [[ $REPLY2 =~ ^[Yy]$ ]]; then
wget https://raw.githubusercontent.com/silverace71/docker-and-docker-compose/main/install-all-docker.sh && sudo chmod +x install-all-docker.sh && ./install-all-docker.sh
else
echo "done!"
fi
echo "done!"