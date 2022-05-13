#!/bin/bash

sudo -i

sleep 2

sudo timedatectl set-timezone America/Sao_Paulo

sleep 2

apt update -y && sudo apt dist-upgrade -y && sudo apt autoremove -y 

sleep 2

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

sudo firewall-cmd --permanent --add-port=1-9999/tcp

sleep 2

sudo firewall-cmd --reload

sleep 2

sudo systemctl start firewalld
