FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cdb4b20fdb24704591578ae1bb05d45343ab400fc2798c9706c8b23fe99b56ec

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
