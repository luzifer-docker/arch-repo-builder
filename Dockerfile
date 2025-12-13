FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:931a926359a6f4c4bafdcb62a923cb983aab0fc693ff5e9355d83d8d5fd09649

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
