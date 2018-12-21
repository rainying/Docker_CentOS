mkdir /Docker

mkdir /Docker/Redis 

mkdir /Docker/Postgresql 

mkdir /Docker/Jenkins

mkdir /Docker/Jfrog 

mkdir /Docker/Gitlab 

mkdir /Docker/Redis/Volumes

mkdir /Docker/Jfrog/Volumes

mkdir /Docker/Postgresql/Volumes

mkdir /Docker/Jenkins/Volumes

mkdir /Docker/Jenkins/Volumes/.m2

mkdir /Docker/Gitlab/Volumes

chmod -R 777 /Docker/Redis/Volumes

chmod -R 777 /Docker/Postgresql/Volumes

chmod -R 777 /Docker/Jenkins/Volumes

chmod -R 777 /Docker/Jfrog/Volumes

chmod -R 777 /Docker/Gitlab/Volumes

mkdir /Docker/JGM

mkdir /Docker/JGM/Main

rm -rf /Docker/JGM/Main

/bin/cp -R ~/github/docker_centos/package/JGM/Compose /Docker/JGM/Main

cd /Docker/JGM/Main

docker-compose down

docker-compose build

docker-compose up -d

 









cd /Docker/Jenkins/Main

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose down

docker-compose build

docker-compose up -d











cd /Docker/Jfrog/Main

docker-compose down

docker-compose build

docker-compose up -d