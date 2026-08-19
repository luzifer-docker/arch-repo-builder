FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:856cfe9ca456a8a792a89cf785d6bfce774ef944ba199a0b6306e5311d43185e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
