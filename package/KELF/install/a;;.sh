git clone https://github.com/twtrubiks/docker-elk-tutorial.git ~/github/elk_docker

 clone https://github.com/rainying/KELF_Docker.git 

 curl -XPOST -D- "http://localhost:5601/api/saved_objects/index-pattern" \
    -H "Content-Type: application/json" \
    -H "kbn-version: 6.1.0" \
    -d "{\"attributes\":{\"title\":\"logstash-*\",\"timeFieldName\":\"@timestamp\"}}"