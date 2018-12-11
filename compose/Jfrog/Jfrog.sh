mkdir /Docker

mkdir /Docker/Jfrog 

mkdir /Docker/Jfrog/Volumes

rm -rf /Docker/Jfrog/Main

/bin/cp -R ~/github/docker_centos/compose/Jfrog/Compose /Docker/Jfrog/Main

cd /Docker/Jfrog/Main

docker-compose down

docker-compose build

docker-compose up -d