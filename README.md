# Docker #

Docker在CentOS上的基本部署

## 步驟 ##

```
yum  -y install epel-release
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
chmod +x ~/github/docker_centos/install/*.sh
```

```
sh ~/github/docker_centos/install/init.sh
```



