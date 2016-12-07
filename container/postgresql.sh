#!/bin/sh
###
# 請以root身份登入
##

## docker run --name [postgresql  container name(postgresql )] -e POSTGRES_PASSWORD=[postgresql password(test)] -d postgres:[postgresql tag(latest)]

docker run --name postgresql -e POSTGRES_PASSWORD=vicying@wind -p 5432:5432 -d postgres:latest