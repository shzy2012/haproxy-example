FROM haproxy:2.0

# 复制 haproxy.cfg
COPY ./etc/haproxy/haproxy.cfg /usr/local/etc/haproxy/
RUN ls /usr/local/etc/haproxy

# 基于 ssl
# COPY ./etc/ssl/emqx/emq.pem /etc/ssl/emqx/
# RUN ls /etc/ssl/emqx