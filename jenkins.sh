#!/bin/bash

# install Java

apt update -y
apt install openjdk-11-jdk -y
apt update -y

# Import the GPG key

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add the Jenkins software repository to the source list and provide the authentication key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# install jenkins
apt update -y
apt install jenkins -y
systemctl enable jenkins
