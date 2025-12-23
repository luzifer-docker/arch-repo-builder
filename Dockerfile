FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:10dd7ab16c3b67f5668a65d093335b0db24c1faf7eab7ed529fb9f7897c9a7c3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
