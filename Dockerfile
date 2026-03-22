FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:6ecd21d95507899363655b9eac57d49cfa423bc0426bed64edbe10c8617f0b62

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
