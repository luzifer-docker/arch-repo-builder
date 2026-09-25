FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:90ecdb91f637ea20ccf524bf7b6fc1de7940301a2e2395f13a9b511fecd8268d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
