FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:53d6c0eeb9de0803a4b52a3d54e555298a7d9e9295106e96c341c60bad6b23c2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
