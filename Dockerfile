FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:251120cce675d2015cb1eedbe08cbc103e9369a59116c12cd7c965a45c8f4fb7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
