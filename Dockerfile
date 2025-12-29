FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a37694db9df0f49fd058f978a24dabfda1daa5f02e522e8325a46aacb2171fa3

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
