FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:825f1b07fa96cbf2d480e2553a148a995864d7b82d86cfe05a4438821e7a6c72

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
