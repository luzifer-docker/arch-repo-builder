FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:88581ba537593ac1cd3205bd01bb62c5c30ef790ec92cb3cf5cab98aecda6586

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
