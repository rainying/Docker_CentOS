FROM bitnami/jenkins:latest

LABEL maintainer="Vic Ying <rainying153@gmail.com>"

WORKDIR /root

ENV JAVA_OPTS -Dsun.jnu.encoding=UTF-8 -Dfile.encoding=UTF-8

RUN mkdir /home/jenkins

RUN mkdir /home/jenkins/.m2

RUN chmod -R 777 /home/jenkins

EXPOSE 8080 8443 50000

ENTRYPOINT [ "/app-entrypoint.sh" ]

CMD [ "nami", "start", "--foreground", "jenkins" ]

	