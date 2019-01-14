mkdir /Docker

mkdir /Docker/Redmine 

mkdir /Docker/Redmine_Postgresql/

rm -rf /Docker/Redmine/Volumes

rm -rf /Docker/Redmine_Postgresql/Volumes

mkdir /Docker/Redmine/Volumes

mkdir /Docker/Redmine_Postgresql/Volumes

chmod -R 777 /Docker/Redmine/Volumes

chmod -R 777 /Docker/Redmine_Postgresql/Volumes

rm -rf /Docker/Redmine/Main

/bin/cp -R ~/github/docker_centos/compose/Redmine/Compose /Docker/Redmine/Main

cd /Docker/Redmine/Main

docker-compose down

docker-compose build

docker-compose up -d