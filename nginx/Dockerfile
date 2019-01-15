FROM alpine:3.8

LABEL maintainer="Echizen Ryoma <echizenryoma.zhang@gmail.com>"

VOLUME [ "/etc/nginx/conf.d" ]

RUN apk add -U nginx \
        nginx-mod-http-headers-more \
    && mkdir -p /var/run/ \
    && rm -rf /var/cache/apk/*

COPY nginx/files/nginx.conf /etc/nginx/nginx.conf
COPY nginx/files/proxy.conf /etc/nginx/proxy.conf

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGTERM

CMD [ "nginx", "-g", "daemon off;" ]