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

以下二選一

```
sh ~/github/docker_centos/install/init.sh #網路需要更改
```

```
sh ~/github/docker_centos/install/init_notchangrenetwork.sh #網路無須更改
```

