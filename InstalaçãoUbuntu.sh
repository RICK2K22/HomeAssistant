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

wget https://github.com/diego780705/HomeAssistant/raw/a13052d267deeccb6814d47d5f6570ba9536f4e0/os-agent_1.2.2_linux_x86_64.deb

dpkg -i os-agent_1.2.2_linux_x86_64.deb

wget https://github.com/diego780705/HomeAssistant/raw/a13052d267deeccb6814d47d5f6570ba9536f4e0/homeassistant-supervised.deb

dpkg -i homeassistant-supervised.deb

systemctl enable firewalld

systemctl start firewalld 

firewall-cmd --state

firewall-cmd --permanent --add-port=1-9999/tcp

firewall-cmd --reload
