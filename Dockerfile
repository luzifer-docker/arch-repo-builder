FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4e5fa5b2ac951c2e6d57ba2593c27517cc0e07ab45cfb6e6dc9f98861ecb7eec

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
