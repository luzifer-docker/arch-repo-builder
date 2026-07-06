FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:60f86546fc90d8a625f32b5f10421d33346e9327501b7206741cf9765f49e678

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
