FROM openjdk:8-jdk-alpine
LABEL maintainer="Wojciech Cichy <wojciech@cichy.org.pl>"
VOLUME /tmp
RUN addgroup bootgrp && adduser -D -G bootgrp bootusr 
WORKDIR /home/bootusr
USER bootusr
COPY --chown=bootusr:bootgrp spring-boot-sample-web-static-2.1.3.RELEASE.war web-static.war
ENTRYPOINT ["java", "-jar", "web-static.war"]
