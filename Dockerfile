FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:87eb1e282bc896a3f815ce15f05260c10d86b7d701136f44375b6065e99aa0d7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
