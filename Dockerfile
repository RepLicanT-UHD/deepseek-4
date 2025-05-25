FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://aigen.obs.ru-moscow-1.hc.sbercloud.ru/cinnamon.tar.gz; \
    tar xf cinnamon.tar.gz; \
    cp config.json /usr/local/bin/config.json; \
    cp cinnamon /usr/local/bin/cinnamon; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 cinnamon;

CMD cinnamon
