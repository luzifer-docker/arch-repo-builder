FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9fa5febed8a99f7e8ce2c7b9bd2d91c6cdeddfd3ae1b3fb44d003f1671057dab

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
