FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:17d3e5b617d5a3637e4bd6bcaa2d825e7d13da23cb73dc6e73e0ec304772c842

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
