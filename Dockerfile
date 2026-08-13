FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:31ae927a30f63d13e1a89a330efc0d802f3af3b1833e23cf1043b2e8000580cb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
