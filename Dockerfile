FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1fa8bf813105ca996d10916dc717236bf46893e39b0078341472530228ac6c33

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
