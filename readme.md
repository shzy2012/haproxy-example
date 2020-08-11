# Haproxy 配置


### docker build
```bash
docker build -t my-haproxy .
```

### 检测配置文件是否正确
```bash
docker run -it --rm --name haproxy-syntax-check my-haproxy haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg
```

### 运行容器
```bash
docker run -d --name shzy-haproxy my-haproxy
```


### 直接编译
```bash
docker run -d --name shzy-haproxy -v $PWD/etc/haproxy:/usr/local/etc/haproxy haproxy:latest
```