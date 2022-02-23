FROM openjdk:8-jdk-alpine
MAINTAINER chenzw<656469722@qq.com>

RUN echo "Asia/Shanghai" > /etc/timezone

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/v3.11/main" >> /etc/apk/repositories \
    && apk upgrade -U -a \
    && apk add --no-cache \
    libexif \
    udev \
    chromium \
    chromium-chromedriver\
    && rm -rf /var/cache/*

EXPOSE 8259


