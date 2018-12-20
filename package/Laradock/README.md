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
chmod +x ~/github/docker_centos/package/Laradock/*.sh
```

```
sh ~/github/docker_centos/package/Laradock/Laradock.sh
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
composer create-project laravel/laravel --prefer-dist
```

```
exit
```

```
curl http://127.0.0.1/
```

===============================================================================================================================

docker-compose logs #查看logs

docker-compose down #關閉所有服務

docker-compose exec -u root nginx bash

docker-compose exec -u root workspace bash
