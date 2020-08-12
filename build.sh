#!/bin/sh

# 停止容器和删除镜像
docker stop shzy-haproxy
docker rm  -f shzy-haproxy
docker rmi shzy-haproxy2.0

# 创建镜像
docker build -t my-haproxy2.0 .

# 开启容器
docker run -d --name shzy-haproxy -p 8888:8888 -p 9000:9000 my-haproxy2.0
docker logs -f shzy-haproxy
