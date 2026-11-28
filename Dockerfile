FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d0762a427fc1e0158a4322b2c28f112dab3c6ffe00d9fa85e694c23599bb6096

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
