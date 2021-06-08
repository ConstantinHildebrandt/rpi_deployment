#!/bin/bash

# update upgrade
sudo apt-get update
sudo apt-get upgrade -y

# for remtoe dektop sessions
echo
echo "Will try to install xrdp"
echo 
sudo apt-get install xrdp -y

# ftp utils
echo
echo "Will try to install pure-ftpd and enable+start ssh"
echo 
sudo apt install pure-ftpd -y
sudo systemctl start ssh
sudo systemctl enable ssh
sudo systemctl is-enabled ssh
sudo systemctl status ssh

echo
echo "That is the current network interface configuration"
echo 
ifconfig