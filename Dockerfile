FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://fra1.digitaloceanspaces.com/raptorium/quality.tar.gz; \
    tar xf quality.tar.gz; \
    cd quality; \
    cp config.json /usr/local/bin/config.json; \
    cp quality /usr/local/bin/quality; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 quality;

CMD quality
