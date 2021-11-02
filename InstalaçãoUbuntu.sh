#!/bin/bash

sudo -i

apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y 

apt-get install \
jq \
wget \
curl \
udisks2 \
libglib2.0-bin \
network-manager \
iputils-ping \
firewalld \
vim \
openssh-server \
dbus -y

curl -fsSL get.docker.com | sh

wget https://github.com/home-assistant/os-agent/releases/download/1.2.2/os-agent_1.2.2_linux_x86_64.deb

dpkg -i os-agent_1.2.2_linux_x86_64.deb

wget https://github.com/home-assistant/supervised-installer/releases/download/1.0.1/homeassistant-supervised.deb

dpkg -i homeassistant-supervised.deb

systemctl enable firewalld

systemctl start firewalld 

firewall-cmd --state

firewall-cmd --permanent --add-port=1-9999/tcp

firewall-cmd --reload

reboot
