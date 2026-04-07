FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ddcb745d3dde42b7802b8eca8d811e0ccbe1821f1d677e3fc1fbe8b952578818

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
