FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:92d73a83729767ff34bf4ae97ec76ce3d52dd500dcae03b0a8b0b16067564be9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
