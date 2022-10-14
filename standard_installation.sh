#!/bin/bash

#set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt install libpangox-1.0-0 libpython2.7-minimal libpython2.7-stdlib libzip4 libtinfo5 libpython2.7 libgtkglext1
#echo deb http://archive.ubuntu.com/ubuntu/ bionic universe | sudo tee /etc/apt/sources.list.d/bionic.list
#sudo apt-get update

#Zoom installing
wget https://zoom.us/client/5.12.2.4816/zoom_amd64.deb -P /tmp
sudo dpkg -i /tmp/zoom_amd64.deb

#slack installing
wget https://downloads.slack-edge.com/releases/linux/4.28.184/prod/x64/slack-desktop-4.28.184-amd64.deb -P /tmp
sudo dpkg -i /tmp/slack-desktop-4.28.184-amd64.deb

sudo apt install git git-lfs -y
git lfs install
sudo apt install mysql-server -y

#MySQL Workbench
wget https://github.com/satyapraneet63/installation-files/raw/main/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb -P /tmp
sudo dpkg -i /tmp/mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb

#Any_Desk Installing
wget https://download.anydesk.com/linux/anydesk_6.2.0-1_amd64.deb -P /tmp
sudo dpkg -i /tmp/anydesk_6.2.0-1_amd64.deb

#intellij IDE
sudo snap install intellij-idea-community --classic
