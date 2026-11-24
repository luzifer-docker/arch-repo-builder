FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2d856882a4840d00c6fb83ddb74878a7f39a97d22f99bcf1d9e3fb5218547a53

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
