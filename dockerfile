FROM noshenxian/ucap-waf-openresty:v1.1
LABEL maintainer "sznr-sre <sznr-sre@ucap.com.cn>"
WORKDIR /usr/local/openresty/nginx
COPY ./conf/ ./conf/

EXPOSE 80

STOPSIGNAL SIGQUIT
RUN ln -sf /dev/stdout /usr/local/openresty/nginx/logs/access.log \
    && ln -sf /dev/stderr /usr/local/openresty/nginx/logs/error.log

ENV PATH=$PATH:/usr/local/openresty/luajit/bin/:/usr/local/openresty/nginx/sbin/:/usr/local/openresty/bin/

CMD ["/usr/local/openresty/nginx/sbin/nginx","-g","daemon off;"]
