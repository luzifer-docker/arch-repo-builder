FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ef970f3ba57edc68cc91fdb13ccf09e24fa0fe93cad58da05454286ffaf42e09

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
