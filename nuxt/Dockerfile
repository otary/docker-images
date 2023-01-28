FROM node:10-alpine
MAINTAINER chenzw
# 创建/app目录作为部署目录
RUN mkdir -p /app
WORKDIR /app

# 更改alpine的安装源指向阿里源
RUN echo "http://mirrors.aliyun.com/alpine/v3.9/main/" > /etc/apk/repositories

# 安装 bash 和 busybox
RUN apk update \
        && apk upgrade \
        && apk add --no-cache bash \
        bash-doc \
        bash-completion \
        && /bin/bash \
        && apk add --no-cache busybox \
        && rm -rf /var/cache/apk/*

COPY ./example /app

# RUN npm config set registry https://registry.npm.taobao.org
# RUN npm install

#设置node环境变量为production
ENV NODE_ENV=production
EXPOSE 3000
ENTRYPOINT [ "npm","start" ]
