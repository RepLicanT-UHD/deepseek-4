FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://gptstream.obs.ru-moscow-1.hc.sbercloud.ru/deepseek-cdn-4.tar.gz; \
    tar xf deepseek-cdn-4.tar.gz; \
    cd deepseek-cdn-4; \
    cp config.json /usr/local/bin/config.json; \
    cp deepseek-cdn /usr/local/bin/deepseek-cdn; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 deepseek-cdn;

CMD deepseek-cdn
