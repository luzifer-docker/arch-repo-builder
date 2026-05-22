FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:0e0285b0edba3d9a697f9b95ddcc4fc79a8b5c0f0a05f5915e2369cb9cff8b23

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
