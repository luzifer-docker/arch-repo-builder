FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1ea0b16d47fb52dd653a9e548587997cf9253bfd27da90a6f046a7885e17dde5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
