FROM bitnami/jenkins:latest

LABEL maintainer="Vic Ying <rainying153@gmail.com>"

WORKDIR /root

RUN mkdir /home/jenkins

RUN mkdir /home/jenkins/.m2

RUN chmod -R 777 /home/jeckins

EXPOSE 8080 8443 50000

ENTRYPOINT [ "/app-entrypoint.sh" ]

CMD [ "nami", "start", "--foreground", "jenkins" ]

	