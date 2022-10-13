#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
echo deb http://archive.ubuntu.com/ubuntu/ bionic universe | sudo tee /etc/apt/sources.list.d/bionic.list
sudo apt-get update

#Zoom installing
wget https://zoom.us/client/5.12.2.4816/zoom_amd64.deb
sudo dpkg -i ~/zoom_amd64.deb

#slack installing
wget https://downloads.slack-edge.com/releases/linux/4.28.184/prod/x64/slack-desktop-4.28.184-amd64.deb
sudo dpkg -i ~/slack-desktop-4.28.184-amd64.deb

#sudo apt install git git-lfs -y

#MySQL Workbench
wget https://github.com/satyapraneet63/installation-files/raw/main/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb
sudo dpkg -i ~/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb

#Any_Desk Installing
wget https://download.anydesk.com/linux/anydesk_6.2.0-1_amd64.deb
sudo dpkg -i ~/anydesk_6.2.0-1_amd64.deb

#intellij IDE
sudo snap install intellij-idea-community --classic
