FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:99bf8b67c3ecb2dccd51268920e8f1fa7b2de8ea16be0e14072decd30ae7e411

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
