FROM haproxy:latest
COPY ./etc/haproxy/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY ./etc/ssl/emqx /etc/ssl/emqx

