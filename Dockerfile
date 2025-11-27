FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:be69b79ec9c24b5b6c843d4a207014f51368a3f0478372617a6d95c0c60d63f1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
