FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:080da992492576b0ca5b0c6abcd11c13931415416ddef68cafd918753bf1ac04

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
