FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ef2d761501460a2c45a477e537e1a0979d23742090027031c020da28d5739edc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
