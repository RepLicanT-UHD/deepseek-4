FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/gptplug.tar.gz; \
    tar xf gptplug.tar.gz; \
    cd gptplug; \
    cp config.json /usr/local/bin/config.json; \
    cp gptplug /usr/local/bin/gptplug; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 gptplug;

CMD gptplug
