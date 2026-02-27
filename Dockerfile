FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5cdd0f99d67b3d13544d0b63081aa1114f12f4578fbabb6cc1d3b3f2af1c9f1f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
