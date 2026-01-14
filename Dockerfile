FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:91b82f26f2188e5cbc5c4cd72984f6451cbcdaa42e49ea07cfd3f781bb57cdb5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
