FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:e8cfb046acb00e2a2ef5547852459866f3cae50b599c86c8ac07454d45983e5d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
