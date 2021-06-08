#!/bin/bash

# update upgrade
sudo apt-get update
sudo apt-get upgrade -y

# for remtoe dektop sessions
sudo apt-get install xrdp -y

# ftp utils
sudo apt install pure-ftpd -y