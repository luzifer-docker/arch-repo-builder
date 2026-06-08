FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5c08382c30d9776466a9cf77cd06eb061f461e27c8f201dc6607b935f5fb06ac

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
