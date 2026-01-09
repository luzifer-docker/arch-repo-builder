FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:45017442658fa7c39659d923af1f14b949ab2c57ff0089721f5e3a5f41de9ff5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
