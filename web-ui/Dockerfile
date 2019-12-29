FROM openjdk:8-jdk-alpine
LABEL maintainer="Wojciech Cichy <wojciech@cichy.org.pl>"
VOLUME /tmp
RUN addgroup bootgrp && adduser -D -G bootgrp bootusr 
WORKDIR /home/bootusr
USER bootusr
COPY --chown=bootusr:bootgrp spring-boot-sample-web-ui-2.1.3.RELEASE.jar web-ui.jar
ENTRYPOINT ["java", "-jar", "web-ui.jar", "--server.servlet.context-path=/ui", "--server.tomcat.basedir=tomcat"]
