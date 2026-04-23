FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:75cf754db0a245b5d354d03bd50683adffb536567c654afa8c737fef8be2d357

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
