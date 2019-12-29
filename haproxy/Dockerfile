FROM haproxy:alpine
LABEL maintainer="Wojciech Cichy <wojciech@cichy.org.pl>"
RUN apk add curl
RUN addgroup haproxy && adduser -D -G haproxy haproxy
USER haproxy
WORKDIR /home/haproxy
COPY --chown=haproxy:haproxy haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY --chown=haproxy:haproxy wait-for-it.sh wait-for-it.sh
COPY --chown=haproxy:haproxy poc.pem poc.pem
RUN chmod +x wait-for-it.sh
