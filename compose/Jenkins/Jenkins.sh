mkdir /Docker

mkdir /Docker/Jenkins 

rm -rf /Docker/Jenkins/Volumes

mkdir /Docker/Jenkins/Volumes

chmod -R 777 /Docker/Jenkins/Volumes

rm -rf /Docker/Jenkins/Main

/bin/cp -R ~/github/docker_centos/compose/Jenkins/Compose /Docker/Jenkins/Main

cd /Docker/Jenkins/Main

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose down

docker-compose build

docker-compose up -d