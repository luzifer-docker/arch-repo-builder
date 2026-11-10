FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:17e5a42c9008a7b9a13c235bcaac72259d96013bc7205981eb35a28aa1bad795

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
