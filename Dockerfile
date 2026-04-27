FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:efdbce4c3c8849f894524b3d443bb85ead970f38d8be3912b00997472ba95913

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
