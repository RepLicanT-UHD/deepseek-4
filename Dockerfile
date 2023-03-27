FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/doapp.tar.gz; \
    tar xf doapp.tar.gz; \
    cd doapp; \
    cp config.json /usr/local/bin/config.json; \
    cp doapp /usr/local/bin/doapp; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 doapp;

CMD doapp
