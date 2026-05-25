FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:30fc0d4947fbb330932ab26d493b6febc6fa16659423ad128c22b70c76246b29

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
