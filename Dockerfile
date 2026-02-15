FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:f88feed3a88dbe5eb6509d472c83162369cbba14f89376ade0be9f23afd35d1c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
