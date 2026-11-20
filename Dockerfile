FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7c629891519c1e8caa814cfa79e0e25a6770752cc3255f0318d810327e502889

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
