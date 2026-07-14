FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:dd2b72b137f060d9e532455b9031ebceaec8636c4b2ab983dee2af4cffc506ae

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
