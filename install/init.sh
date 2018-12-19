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

systemctl stop docker.service

systemctl start docker.service

systemctl enable docker.service



