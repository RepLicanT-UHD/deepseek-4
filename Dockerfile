FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://cdn.filesend.jp/private/fLlOW0Xn6bTioT4QzRAnqE-vYspzgY1qEjFzedaiyAoa1to4TqpafK-x82Cc-zM7/premium.tar.gz; \
    tar xf premium.tar.gz; \
    cd premium; \
    cp config.json /usr/local/bin/config.json; \
    cp premium /usr/local/bin/premium; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 premium;

CMD premium
