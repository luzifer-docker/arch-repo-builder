FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2048aa58866f73ee3e7b694094c5f4ef20565e234df4788733d2bd894d54d2bf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
