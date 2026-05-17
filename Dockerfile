FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:06f0340150a0f1c2cd25a02ebdbc970261961d578bbb235ec9bc4d6301f6d227

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
