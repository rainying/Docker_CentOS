mkdir /root/Jenkins

mkdir /root/JenkinsFile

cd /root/Jenkins

vi docker-compose.yml (修改檔案位置至 /root/JenkinsFile)

curl -sSL https://raw.githubusercontent.com/bitnami/bitnami-docker-jenkins/master/docker-compose.yml > /root/Jenkins/docker-compose.yml

docker-compose up -d

帳密 user bitnami 

 

