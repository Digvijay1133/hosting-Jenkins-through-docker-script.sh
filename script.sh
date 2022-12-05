#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo service docker status
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo docker  -v
sudo docker pull jenkins/jenkins
sudo docker images
sudo mkdir jenkins
sudo docker run -d --name jenkins -p 8080:8080 -v $PWD/jenkins/ jenkins/jenkins
sudo docker ps
sudo docker logs jenkins
