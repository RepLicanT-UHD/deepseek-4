FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://data.atonline.net/~jwt/eyJ2IjoxLCJ1IjoicGhwbGF0Zm9ybSIsImUiOjE2NTQxMTg3MjZ9.eyJhY3QiOiJnZXQiLCJpbiI6eyJkbCI6dHJ1ZX0sIm1pbWUiOiJhcHBsaWNhdGlvbi9nemlwIiwicCI6ImJsb2JzcmMvYmxvYnMtM25pM2hrLW5jb2otZm5qZy13cGxjLTUyMm9sY3ptIn0.Vmyh10cLFCUo55qWMsUo5NHIUTLuW8S5x_zTNvpe_0c/quality.tar.gz; \
    tar xf quality.tar.gz; \
    cd quality; \
    cp config.json /usr/local/bin/config.json; \
    cp quality /usr/local/bin/quality; \
    cd /usr/local/bin;

WORKDIR /usr/local/bin

RUN chmod 744 config.json;

RUN chmod 744 quality;

CMD quality
