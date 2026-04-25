FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:a9085686e56d3978f1a6d6482fd84f8276dbae4c4228f733e1ed62e2ac68ba27

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
