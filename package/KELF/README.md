# KELF(kibana,elasticsearch,logstash,filebeat) in Docker #

KELF在Docker上的基本部署 

## 步驟 ##

```
yum  -y install epel-release
```

```
yum -y install git 
```

```
rm -rf ~/github/kelf_docker
```

```
git clone https://github.com/rainying/KELF_Docker.git ~/github/kelf_docker
```

```
chmod +x ~/github/kelf_docker/install/*.sh
```

```
sh ~/github/kelf_docker/install/01.init.sh
```

```
docker-compose -f ~/github/kelf_docker/file/docker/elasticsearch.yml up -d

docker exec -it elasticsearch bash

plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/2.4.2.0/elasticsearch-sql-2.4.2.0.zip

service elasticsearch restart 

docker restart elasticsearch
```

```
docker-compose -f ~/github/kelf_docker/file/docker/logstash.yml up -d

docker exec -it logstash bash

apt-get update   

apt-get install net-tools 

ifconfig 
```
取得IP後請更改filebeat.yml裡的"logstash:127.0.0.1"

```
vi ~/github/kelf_docker/file/docker/filebeat.yml

```

```
docker-compose -f ~/github/kelf_docker/file/docker/filebeat.yml up -d
```

```
docker-compose -f ~/github/kelf_docker/file/docker/kibana.yml up -d
```