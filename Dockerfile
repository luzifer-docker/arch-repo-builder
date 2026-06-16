FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a86ca8259733aa437f8b5526f8f6e215922bd48fb09447bf1eb6f7e48ddbcf3c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
