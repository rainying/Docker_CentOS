#!/bin/sh
###
# 請以root身份登入
##

yum -y install python-pip

pip install --upgrade pip

cp ~/github/docker_centos/file/docker.repo  /etc/yum.repos.d/docker.repo

yum -y install docker-engine

pip install docker-compose

pip install backports.ssl_match_hostname --upgrade

yum -y install bridge-utils

systemctl stop docker.service

echo '{"bip": "192.168.210.1/24"}' > /etc/docker/daemon.json

systemctl restart network

systemctl start docker.service

systemctl enable docker.service

reboot