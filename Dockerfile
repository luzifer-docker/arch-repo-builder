FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7b39401ae56224ed8f5ebd69580f1208979815d2936d3f302333f570de3a218c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
