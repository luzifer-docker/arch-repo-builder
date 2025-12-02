FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:109cb9bd8725caf048e94639dabadec1722e801166e4d25e7dcb0ebbf5bd2001

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
