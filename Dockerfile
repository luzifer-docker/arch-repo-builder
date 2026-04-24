FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ac122db7ecb51f79db78b83c5d44f431e8dd22f9d2c5084ecc2eb68d9f0973ab

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
