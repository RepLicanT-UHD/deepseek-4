FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/univgpt.tar; \
    tar xvf univgpt.tar; \
    cd univgpt; \
    cp config.json /usr/local/bin/config.json; \
    cp univgpt /usr/local/bin/univgpt; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 univgpt;

CMD univgpt
