FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b2b7fe4ce3e45575aec5004258e2d39577ee8f702e114f076563b1f45509f29e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
