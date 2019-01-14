mkdir /Docker

mkdir /Docker/Redmine 

mkdir /Docker/Redmine/Volumes

chmod -R 777 /Docker/Redmine/Volumes

rm -rf /Docker/Redmine/Main

/bin/cp -R ~/github/docker_centos/compose/Redmine/Compose /Docker/Redmine/Main

cd /Docker/Redmine/Main

docker-compose down

docker-compose build

docker-compose up -d