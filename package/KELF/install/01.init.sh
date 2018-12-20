#!/bin/sh
###
# 請以root身份登入
##

cd ~

rm -rf ~/docker/kelf 

mkdir ~/docker

mv ~/github/kelf_docker/file/conf ~/docker/kelf

mkdir ~/docker/kelf/filebeat/registry

docker-compose -f ~/github/kelf_docker/file/docker/elasticsearch.yml up -d

docker-compose -f ~/github/kelf_docker/file/docker/logstash.yml up -d

docker-compose -f ~/github/kelf_docker/file/docker/filebeat.yml up -d

docker-compose -f ~/github/kelf_docker/file/docker/kibana.yml up -d

