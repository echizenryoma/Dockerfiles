FROM alpine:3.8

LABEL maintainer="Echizen Ryoma <echizenryoma.zhang@gmail.com>"

RUN apk add nginx nginx-mod-http-headers-more \
    && mkdir -p /var/run/

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/nginx.d/default.conf /etc/nginx/nginx.d/default.conf
COPY files/proxy.conf /etc/nginx/proxy.conf

EXPOSE 80
EXPOSE 443

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]