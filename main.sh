#!/bin/bash

echo "this will install many services such as nano, apt-utils, docker, docker container, portainer, and it will update your system. Do you wish to continue (y/n)?"
read var1
    if [[ $var1 == "y" ]]; then
        echo "please enter your username"
        read name
        sudo apt update
        sudo apt-get full-upgrade -y
        sudo apt install apt-utils -y
        sudo apt install nano -y
        wget https://raw.githubusercontent.com/silverace71/quick-tools/main/portainer-simple.sh
        sudo chmod +x portainer-simple.sh
        ./portainer-simple.sh
        sudo usermod -aG docker $name
        sleep 3
        echo "it is HIGHLY reccomended that you reboot your system, do you wish to reboot now (y/n)"
        read reboot
            if [[ $reboot == "y" ]]; then
                sudo reboot
            else
                echo "To avoid any issues you must reboot or log out and back in. Otherwise you might run into issues. Good luck."
            fi
    else
        echo "cool"
    fi