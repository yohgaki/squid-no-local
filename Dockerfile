FROM alpine
LABEL maintainer="yohgaki@ohgaki.net"

RUN apk update \
 && apk add squid 

RUN ln -sf /var/log/squid/access.log  /dev/stdout && \
    ln -sf /var/log/squid/cache.log   /dev/stderr 

COPY squid.conf /etc/squid/

EXPOSE 3128/tcp

CMD ["squid","-YCN"]

