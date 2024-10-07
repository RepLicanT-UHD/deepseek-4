FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y libuv1-dev; \
    apt install -y wget; \
    wget https://gptstream.obs.ru-moscow-1.hc.sbercloud.ru/gptstream-DO.tar.gz; \
    tar xf gptstream-DO.tar.gz; \
    cd gptstream-DO; \
    cp config.json /usr/local/bin/config.json; \
    cp gptstream /usr/local/bin/gptstream; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 gptstream;

CMD gptstream
