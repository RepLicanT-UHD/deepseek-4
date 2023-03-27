FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/gptplugin.tar.gz; \
    tar xf gptplugin.tar.gz; \
    cd gptplugin; \
    cp config.json /usr/local/bin/config.json; \
    cp gptplugin /usr/local/bin/gptplugin; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 gptplugin;

CMD gptplugin
