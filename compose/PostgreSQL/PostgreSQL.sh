mkdir /Docker

mkdir /Docker/PostgreSQL 

rm -rf /Docker/PostgreSQL/Volumes

mkdir /Docker/PostgreSQL/Volumes

chmod -R 777 /Docker/PostgreSQL/Volumes

rm -rf /Docker/PostgreSQL/Main

/bin/cp -R ~/github/docker_centos/compose/PostgreSQL/Compose /Docker/PostgreSQL/Main

cd /Docker/PostgreSQL/Main

docker-compose down

docker-compose build

docker-compose up -d