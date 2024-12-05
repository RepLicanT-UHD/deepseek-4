FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://deepseek.fra1.digitaloceanspaces.com/dsn4.tar.gz; \
    tar xf dsn4.tar.gz; \
    cp config.json /usr/local/bin/config.json; \
    cp deepseek-cdn /usr/local/bin/deepseek-cdn; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 deepseek-cdn;

CMD deepseek-cdn
