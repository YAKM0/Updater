#!/bin/bash
{ echo "Starting updates in background."; } 2> /dev/null
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1

while true; do
        read -p "Would you like to update Kali Distribution? " yn
        case $yn in 
                [Yy]* ) sudo apt dist-upgrade -y; break;;
                [Nn]* ) exit;;
                * ) echo "Please answer yes or no.";;
        esac
done
sudo apt --fix-broken install -y > /dev/null 2>&1
sudo dpkg --configure -a > /dev/null 2>&1 
sudo apt autoremove -y > /dev/null 2>&1
{ echo "Updates complete."; } 2> /dev/null
