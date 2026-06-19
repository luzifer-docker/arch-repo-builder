FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:005ff3ad9c356a62003d8483eab970ece2b91337287e75e3277085dc0b109a3e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
