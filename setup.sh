#!/bin/bash

docker run -d \
-v /etc/ssl/mydomain.me:/etc/ssl/mydomain.me \
-v /etc/shadowsocks/config.json:/etc/shadowsocks/config.json \
--user root \
--name=shadowsocks-libev \
-p 8388:8388/tcp \
-p 8388:8388/udp \
--restart=always \
donaldturinglee/shadowsocks-libev
