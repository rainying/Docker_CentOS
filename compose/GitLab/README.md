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
chmod +x ~/github/docker_centos/compose/GitLab/*.sh
```

```
sh ~/github/docker_centos/compose/GitLab/GitLab.sh
```


以下為教學

一、初始設定

	1.1 root 密碼設定
		剛開始登入的時候設定root密碼，供GitLab root帳號使用。

	1.2 帳號申請設定

		1.2.1 關閉登入時帳號申請
	    點選 Admin area -> Sign-up restrictions -> Sign-up enabled

	    

