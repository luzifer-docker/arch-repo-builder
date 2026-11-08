FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c61a312ea725c3c459a12dea422e119583c18808488ab41495ee002bd346f695

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
