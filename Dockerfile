FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c0ed8c6470cf18f463da9f06a1f6517d29cbeb8c3f54d53820919eb01906ee9c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
