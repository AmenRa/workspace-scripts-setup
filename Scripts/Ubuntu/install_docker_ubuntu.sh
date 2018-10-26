#!/bin/bash

# install docker on ubuntu

# setup docker's repositories

# Update the apt package index:

sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS:

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key:

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88

sudo apt-key fingerprint 0EBFCD88

# Use the following command to set up the stable repository. You always need the stable repository, even if you want to install builds from the edge or test repositories as well. To add the edge or test repository, add the word edge or test (or both) after the word stable in the commands below.

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install docker

# Update the apt package index.

sudo apt-get update

# Install the latest version of Docker CE, or go to the next step to install a specific version:

sudo apt-get install docker-ce

# Verify that Docker CE is installed correctly by running the hello-world image.

sudo docker run hello-world

# install docker-compose (go here to see which is the latest version: https://github.com/docker/compose/releases)

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.0-rc1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the binary:

sudo chmod +x /usr/local/bin/docker-compose

# check docker-compose installation

docker-compose --version
