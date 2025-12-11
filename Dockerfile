FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:391c8954cdd4b41743ae166f7e6bd2d831538e55ef3bfe5f7a6375d7bb46b022

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
