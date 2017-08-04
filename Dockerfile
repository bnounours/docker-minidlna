FROM bnounours/docker-base-alpine:armhf-latest-stable

RUN apk update && \
    apk add minidlna && \
    mkdir -p /data/media /data/db /data/config

ADD ./minidlna.conf.tmpl /etc/

ADD ./run.sh /opt/

USER $UID

EXPOSE 8200 1900/udp

VOLUME ["/data/media","/data/db","/data/config"]

ENTRYPOINT /opt/run.sh
    
