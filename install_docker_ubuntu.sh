#!/bin/bash


# Update ubuntu
echo "Update OS..."
sudo apt update -y

# download ca certificates
echo "download ca certificates..."
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker GPG key
echo "ADD Docker GPG Key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


# Add Docker repository
echo "Add docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


# Update ubuntu
echo "Update OS..."
sudo apt update -y

# Install docker 
echo "install docker ce..."
sudo apt install docker-ce docker-ce-cli containerd.io -y
echo "Docker installation completed..."


# Verify Docker version

sudo docker run hello-world


# pull nginx image and run on container

sudo docker run -d --name mysql mysql:latest &  # Run MySQL in detached mode
sudo docker run -d --name webserver 8080:80 nginx:latest
