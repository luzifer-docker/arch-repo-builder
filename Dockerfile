FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:64924b8736543776129bfef58b36fb3866cee24e29e10b75a079de0bf131539f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
