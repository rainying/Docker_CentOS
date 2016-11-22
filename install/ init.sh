yum  -y install epel-release

yum -y install git 

yum -y install python-pip

pip install --upgrade pip

git ~/docker_install 

cp ~/docker_install  /etc/yum.repos.d/docker.repo

yum -y install docker-engine

pip install docker-compose

pip install backports.ssl_match_hostname --upgrade

systemctl start docker.service
systemctl enable docker.service
