FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:892410852cea7976b449873b5db92a472ca452fb57a6e12ff8ae1192e7c00134

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
