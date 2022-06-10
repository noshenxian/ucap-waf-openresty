# ucap-waf-openresty 说明

# 构建系统依赖
```
apt install gcc make autoconf libtool git g++ libcurl4 liblua5.4-dev curl libcurlpp-dev libxml2-dev libpcre2-dev libpcre++-dev libssl-dev zlib1g-dev libgeoip-dev libyajl-dev  liblmdb-dev
```

# 配置文件
conf目录
This is the OWASP ModSecurity Core Rule Set version 3.3.2

# nginx.conf

根据实际项目需求自定义配置即可，更改配置后重新构建docker镜像即可。

# 构建镜像
```
git clone https://github.com/noshenxian/ucap-waf-openresty.git

cd ucap-waf-opnresty

docker build -t ucap-waf .

```

# 运行方式
```
docker run --name nginx -itd -p 80:80 ucap-waf:v1
```