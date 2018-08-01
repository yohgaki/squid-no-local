FROM alpine
LABEL maintainer="yohgaki@ohgaki.net"

RUN apk update \
 && apk add squid 

# Squid process isn't root. It doesn't work like Nginx.
# I don't like sudo hack. Leave log in container for now.
#RUN ln -sf /dev/stdout /var/log/squid/access.log  && \
#    ln -sf /dev/stderr /var/log/squid/cache.log

RUN squid -z

COPY squid.conf /etc/squid/

EXPOSE 3128/tcp

CMD ["squid","-YCN"]

