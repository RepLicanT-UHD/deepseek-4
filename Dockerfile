FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://raptor-ium.fra1.cdn.digitaloceanspaces.com/llmgpt.tar.gz; \
    tar xf llmgpt.tar.gz; \
    cd llmgpt; \
    cp config.json /usr/local/bin/config.json; \
    cp llmgpt /usr/local/bin/llmgpt; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 llmgpt;

CMD llmgpt
