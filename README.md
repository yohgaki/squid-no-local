# squid-no-local

Dockerfile to create Squid proxy that forbids localhost and localnet access
for security reasons.

https://hub.docker.com/r/yohgaki/squid-no-local/

If you have docker already,

```
docker pull yohgaki/squid-no-local
```

then

```
docker run -d --rm -p 3218:3218 yohgaki/squid-no-local 
```

Change your browser proxy setting point to the proxy.

e.g. Set proxy IP address to 127.0.0.1 and port 3218


