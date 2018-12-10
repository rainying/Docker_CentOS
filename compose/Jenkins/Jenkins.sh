mkdir /Docker

mkdir /Docker/Jenkins 

mkdir /Docker/Jenkins/Volumes

rm -rf /Docker/Jenkins

/bin/cp -R ~/github/docker_centos/compose/Jenkins/Compose /root/Jenkins/Main

cd /root/Jenkins/Main

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose down

docker-compose build

docker-compose up -d