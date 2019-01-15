FROM alpine:3.8

LABEL maintainer="Echizen Ryoma <echizenryoma.zhang@gmail.com>"

VOLUME [ "/etc/squid/passwd", "/var/log/squid" ]

RUN apk add -U squid \
    && mkdir -p /var/log/squid \
    && rm -rf /var/cache/apk/*

COPY squid/files/squid.conf /etc/squid/squid.conf

EXPOSE 8123

STOPSIGNAL SIGTERM

CMD [ "squid" ]