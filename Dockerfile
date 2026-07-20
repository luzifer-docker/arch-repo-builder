FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:754aae817c9a228273df3b201c2c902a6e86d9d8b4fbd8a59d6576b45f951284

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
