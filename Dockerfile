FROM alpine
LABEL maintainer="yohgaki@ohgaki.net"

RUN apk update \
 && apk add squid 

RUN ln -sf /dev/stdout /var/log/squid/access.log  && \
    ln -sf /dev/stderr /var/log/squid/cache.log

COPY squid.conf /etc/squid/

EXPOSE 3128/tcp

CMD ["squid","-YCN"]

