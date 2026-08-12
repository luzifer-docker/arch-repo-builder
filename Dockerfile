FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:618344fc69e2e6fdd4b19fb02e2c1ed4f48094155d3c8367d0dd35d94c075e94

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
