FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4b5b8ddf4828274bed5ecd3a2940618208105dd5dba71b060f6562c0b18cad7b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
