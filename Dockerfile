FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:8263485be2b76f7e66a84f1d8401d8bdad21cb7c055381bed0ef716a07f24e79

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
