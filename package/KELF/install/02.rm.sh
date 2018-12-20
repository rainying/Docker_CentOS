#!/bin/sh
###
# 請以root身份登入
##

docker stop kibana logstash elasticsearch filebeat

docker rm kibana logstash elasticsearch filebeat    


