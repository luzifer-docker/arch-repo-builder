FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:895cbde61be44264278da2b148e945033147238dc254439c5aa8d3227bfa690f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
