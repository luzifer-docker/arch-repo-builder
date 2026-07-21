FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:40f0e743c741fe2cbd1bd64fa6769502448cb8b6378e3902138f06d713e3f7d2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
