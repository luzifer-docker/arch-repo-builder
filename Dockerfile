FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:789ed95837732a3ab0770f6c2a8c70bec0db896f9ef2d3b32af37533b9952432

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
