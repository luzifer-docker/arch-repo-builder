FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cd46cbbcb71d9543c4b5dbb6623f627923ffe1303ae5fe0bc01dd2a2d0b9b1e8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
