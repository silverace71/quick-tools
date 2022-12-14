#!/bin/bash
##all the code to install docker | docker compose | portainer
sudo apt update
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo apt-get install libffi-dev libssl-dev
sudo apt install python3-dev -y
sudo apt-get install -y python3 python3-pip
sudo pip3 install docker-compose
sudo docker volume create portainer_data
sudo docker pull portainer/portainer-ce:latest
sudo docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
##telling you where portainer is
lanIp="$(ip -4 -o -br addr|awk '$0 ~ /^[we]\w+\s+UP\s+/ {str = gsub("/[1-9][0-9]*", "", $0); print $3}')";
echo "Portainer is located at: https://${lanIp}:9443";
