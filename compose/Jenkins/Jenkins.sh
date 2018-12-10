mkdir /root/JenkinsFile

rm -rf /root/Jenkins

/bin/cp -R ~/github/docker_centos/compose/Jenkins/file /root/Jenkins

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose down

docker-compose build

docker-compose up -d