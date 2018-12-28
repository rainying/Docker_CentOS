cd /Docker/ELK/Main

docker-compose down

cd ~ 

rm -rf /Docker/ELK/GitFile

mkdir /Docker/ELK/GitFile

git clone https://github.com/deviantony/docker-elk.git /Docker/ELK/GitFile

mkdir /Docker

mkdir /Docker/ELK

rm -rf /Docker/ELK/Main

/bin/cp -R ~/github/docker_centos/package/ELK/Compose /Docker/ELK/Main

/bin/cp /Docker/ELK/GitFile/.env /Docker/ELK/Main/.env

mkdir /Docker/ELK_Logstash 

mkdir /Docker/ELK_Elasticsearch

mkdir /Docker/ELK_Kibana

/bin/cp -R /Docker/ELK/GitFile/logstash /Docker/ELK_Logstash/Volumes

/bin/cp -R /Docker/ELK/GitFile/elasticsearch /Docker/ELK_Elasticsearch/Volumes

/bin/cp -R /Docker/ELK/GitFile/kibana /Docker/ELK_Kibana/Volumes

rm -f /Docker/ELK_Elasticsearch/Volumes/Dockerfile

rm -f /Docker/ELK_Logstash/Volumes/Dockerfile

rm -f /Docker/ELK_Kibana/Volumes/Dockerfile

chmod -R 777 /Docker/ELK_Elasticsearch/Volumes

chmod -R 777 /Docker/ELK_Logstash/Volumes

chmod -R 777 /Docker/ELK_Kibana/Volumes

cd /Docker/ELK/Main

docker-compose build

docker-compose up -d