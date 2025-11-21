FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:90bd028a27e6fd6197ec822629c046dc271b5b98e16b68ee79ad6c184f5f33bc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
