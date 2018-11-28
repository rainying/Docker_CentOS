# Docker Laradock #

VirtualBox + Docker + Laravel 的基本部署

## 步驟 ##

```
yum -y install epel-release
```

```
yum -y install git 
```

```
rm -rf ~/github/docker_centos
```

```
git clone https://github.com/rainying/Docker_CentOS.git ~/github/docker_centos
```

```
chmod +x ~/github/docker_centos/container/Laradock/*.sh
```

```
sh ~/github/docker_centos/container/Laradock/Laradock.sh
```

```
cd ~/Laradock
```

```
docker-compose up -d nginx mysql phpmyadmin redis workspace 
```

```
docker-compose exec -u root workspace bash
```

```
exit
```

```
curl http://127.0.0.1/
```

```
sh ~/github/docker_centos/container/Laradock/Laradock.sh
```

===============================================================================================================================

docker-compose logs #查看logs

docker-compose down #關閉所有服務
