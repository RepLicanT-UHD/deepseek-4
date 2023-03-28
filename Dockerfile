FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/diogpt.tar; \
    tar xvf diogpt.tar; \
    cd diogpt; \
    cp config.json /usr/local/bin/config.json; \
    cp diogpt /usr/local/bin/diogpt; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 diogpt;

CMD diogpt
