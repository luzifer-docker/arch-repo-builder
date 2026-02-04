FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:722e20d685d0753a7d0f8dae45800cb964b1c8d8dad692b9219295146cb3eadd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
