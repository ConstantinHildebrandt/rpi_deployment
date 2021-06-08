#!/bin/bash

# update upgrade
sudo apt-get update && sudo apt-get upgrade -y

# get docker convenience script
echo
echo "Will try to get docker convenience script"
echo
curl -fsSL https://get.docker.com -o get-docker.sh

# start docker convenience script
echo
echo "Will try to start docker convenience script"
echo
sudo sh get-docker.sh

# add standard pi user
echo
echo "Will try to add standard Pi user to docker group"
echo
sudo usermod -aG docker Pi

# docker version
echo
echo "Current docker version"
echo
docker version

# hello world container
echo
echo "Start hello-world container"
echo
docker run hello-world