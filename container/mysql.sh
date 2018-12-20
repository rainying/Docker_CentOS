#!/bin/sh
###
# 請以root身份登入
##

## docker run --name [mysql container name(mysql)] -e MYSQL_ROOT_PASSWORD=[mysql password(test@password)] -d mysql:[mysql tag(9)]

docker run --name mysql -e MYSQL_ROOT_PASSWORD=test@password -p 3306:3306 -d mysql:latest