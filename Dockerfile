FROM alpine:latest
LABEL maintainer "cgicsj <cgicsj@gmail.com>"

COPY caddy /usr/local/bin/caddy
COPY Caddyfile /root/caddy/
RUN  mkdir -p /usr/www/html  && mkdir -p /root/caddy && echo "<h1>Hello,World!</h1>" >> /usr/www/html/index.html

EXPOSE 80 443
ENV TZ=Asia/Shanghai
CMD  ["/usr/local/bin/caddy","-conf","/root/caddy/Caddyfile","-agree"]
