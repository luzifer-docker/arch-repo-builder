FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3c35c552c92f7d3c0f951793e20bc8945c5dc8f6c1d0f25d5ecc8eb308a8baa6

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
