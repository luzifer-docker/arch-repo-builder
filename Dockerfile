FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e88af808f5fbede902f032a41b22cfbec829e1e078a0873d0a7a3ee7dbc4d2fb

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
