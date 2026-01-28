FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9510c63f1d793e77f5ce9e45bb380294a75fc55ef0c3a67a69300f982b6700d9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
