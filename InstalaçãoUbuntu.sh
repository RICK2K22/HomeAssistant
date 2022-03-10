#!/bin/bash

sudo -i

sleep 2

apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y 

sleep 2

apt-get install \
sleep 2
jq \
sleep 2
wget \
sleep 2
curl \
sleep 2
udisks2 \
sleep 2
libglib2.0-bin \
sleep 2
network-manager \
sleep 2
iputils-ping \
sleep 2
firewalld \
sleep 2
vim \
sleep 2
openssh-server \
sleep 2
dbus -y

sleep 2

curl -fsSL get.docker.com | sh

sleep 2

wget https://github.com/diego780705/HomeAssistant/raw/a13052d267deeccb6814d47d5f6570ba9536f4e0/os-agent_1.2.2_linux_x86_64.deb

sleep 2

dpkg -i os-agent_1.2.2_linux_x86_64.deb

sleep 2

wget https://github.com/diego780705/HomeAssistant/raw/a13052d267deeccb6814d47d5f6570ba9536f4e0/homeassistant-supervised.deb

sleep 2

dpkg -i homeassistant-supervised.deb

sleep 2

systemctl enable firewalld

sleep 2

systemctl start firewalld 

sleep 2

firewall-cmd --state

sleep 2

firewall-cmd --permanent --add-port=1-9999/tcp

sleep 2

firewall-cmd --reload
