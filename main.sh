#!/bin/bash

echo "this will install many services such as nano, apt-utils, docker, docker container, portainer, and it will update your system. Do you wish to continue (y/n)?"
read var1
    if [[ $var1 == "y" ]]; then
        sudo apt update
        sudo apt-get full-upgrade -y
        sudo apt install apt-utils -y
        sudo apt install nano -y
        wget https://raw.githubusercontent.com/silverace71/quick-tools/main/portainer-simple.sh
        sudo chmod +x portainer-simple.sh
        ./portainer-simple.sh