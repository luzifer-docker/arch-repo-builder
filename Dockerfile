FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b056dbf5aba6b14d7f6d78f314522e9651c331fa32c22e1677ebf637d13db012

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
