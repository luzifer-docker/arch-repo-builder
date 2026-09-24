FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:65b56fb0561a4220cb4683264ccd17d173888970b85c4fb7c72532ee42c7c05c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
