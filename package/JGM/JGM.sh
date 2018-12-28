cd /Docker/JGM/Main

docker-compose down

cd 

mkdir /Docker

mkdir /Docker/JGM_Redis 

mkdir /Docker/JGM_Postgresql 

mkdir /Docker/JGM_Jenkins

mkdir /Docker/JGM_Jfrog 

mkdir /Docker/JGM_Gitlab 

mkdir /Docker/JGM_Redis/Volumes

mkdir /Docker/JGM_Jfrog/Volumes

mkdir /Docker/JGM_Postgresql/Volumes

mkdir /Docker/JGM_Jenkins/Volumes

mkdir /Docker/JGM_Jenkins/Volumes/.m2

mkdir /Docker/JGM_Gitlab/Volumes

chmod -R 777 /Docker/JGM_Redis/Volumes

chmod -R 777 /Docker/JGM_Postgresql/Volumes

chmod -R 777 /Docker/JGM_Jenkins/Volumes

chmod -R 777 /Docker/JGM_Jfrog/Volumes

chmod -R 777 /Docker/JGM_Gitlab/Volumes

mkdir /Docker/JGM

mkdir /Docker/JGM/Main

rm -rf /Docker/JGM/Main

/bin/cp -R ~/github/docker_centos/package/JGM/Compose /Docker/JGM/Main

cd /Docker/JGM/Main

docker-compose down

docker-compose build

docker-compose up -d