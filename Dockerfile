FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:0353758a00b37c25b802cd39243941e54ec7e0cef8d4f627d4ed5d0f02432115

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
