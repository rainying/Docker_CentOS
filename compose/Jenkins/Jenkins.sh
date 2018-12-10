mkdir /root/Jenkins

mkdir /root/JenkinsFile

cd /root/Jenkins

/bin/cp ~/github/docker_centos/compose/Jenkins/file/docker-compose.yml /root/Jenkins/docker-compose.yml

--原始檔 https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml

docker-compose up -d