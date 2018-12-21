# Docker Laradock #

Jenkins + Gitlab + Mavan(Jfrog) (VirtualBox + Docker環境) 的基本部署

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
chmod +x ~/github/docker_centos/compose/Laradock/*.sh
```

```
sh ~/github/docker_centos/compose/Laradock/Laradock.sh
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

```
sh ~/github/docker_centos/container/Laradock/Laradock.sh
```

