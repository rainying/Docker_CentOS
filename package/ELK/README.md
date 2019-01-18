# Docker ELK #

ELK(Kibana + Logstash + Elasticsearch)(VirtualBox + Docker環境) 的基本部署

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
chmod +x ~/github/docker_centos/package/ELK/*.sh
```

```
sh ~/github/docker_centos/package/ELK/ELK.sh
```


測試

yum install -y nc

nc 127.0.0.1 5000 < ~/github/docker_centos/package/ELK/File/test.txt
