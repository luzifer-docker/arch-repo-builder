FROM luzifer/archlinux:latest@sha256:f5520be5cfc65cf101ffe071d629bf1b3c93642fb33299f27a5b5b8573351dde

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
