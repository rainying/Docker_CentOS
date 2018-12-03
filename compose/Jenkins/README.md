mkdir /root/Jenkins

curl -sSL https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml > /root/Jenkinsdocker-compose.yml

docker-compose up -d