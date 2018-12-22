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
chmod +x ~/github/docker_centos/package/JGM/*.sh
```

```
sh ~/github/docker_centos/package/JGM/JGM.sh
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

以下為教學

首先進入登入頁面 帳號為 user 密碼為 bitnami 登入。

一、如何使用JDK + Maven 建置專案

	1.1 首先設定相關套件 點選 Manage Jenkins -> Global Tool Configuration 設定JDK、Git、Gradle、Maven、Artifactory。

		1.1.1 JDK
			Name 輸入 -> JDK-1.8.20。
			Version 選擇 -> Java SE Development Kit 8u20。
			另外點選 I agree to the Java SE Development Kit License Agreement
			另外要設定一個Oracle帳密來下載JDK。 (點選Please enter your username/password來設定)。

		1.1.2 Git
		    Git Name 設定 -> Git。

		1.1.3 Gradle
		    Name 輸入 -> Gradle 1.12
			Version 選擇 -> Gradle 1.12

		1.1.4 Maven。
			Name 輸入 -> Maven-3.2.2
			Version 選擇  -> 3.2.2

	1.2 建立一個新的專案來測試

		1.2.1 建立新專案 
			建立新專案 New Item、輸入名字(例如：Maven-Project)後選擇Freestyle project，點選OK。

		1.2.2 Git 設定
			點選 Source Code Management -> Git 
			Repository URL 輸入 -> https://github.com/jleetutorial/maven-project.git。

		1.2.3 Maven 設定
            點選 Build -> Invoke top-level Maven targets
            Maven Version 選擇 -> Maven-3.2.2
            Goals 輸入-> clean compile jar:jar

一、初始設定

	1.1 root 密碼設定
		剛開始登入的時候設定root密碼，供GitLab root帳號使用。

	1.2 帳號申請設定

		1.2.1 關閉登入時帳號申請
	    點選 Admin area -> Sign-up restrictions -> Sign-up enabled

	    
