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
chmod +x ~/github/docker_centos/compose/Jfrog/*.sh
```

```
sh ~/github/docker_centos/compose/Jfrog/Jfrog.sh
```


docker run --name artifactory -d -p 8081:8081 docker.bintray.io/jfrog/artifactory-oss:latest