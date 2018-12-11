mkdir /Docker

mkdir /Docker/Redis 

mkdir /Docker/Redis/Volumes

mkdir /Docker/Postgresql 

mkdir /Docker/Postgresql/Volumes

mkdir /Docker/Gitlab 

mkdir /Docker/Gitlab/Volumes

rm -rf /Docker/Gitlab/Main

/bin/cp -R ~/github/docker_centos/compose/GitLab/Compose /Docker/Gitlab/Main

cd /Docker/Gitlab/Main

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose down

docker-compose build

docker-compose up -d
