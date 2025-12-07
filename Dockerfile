FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4c89ea2ee66b2a4fc11e9da47a10ffab17dd7baccdbd10a5c9275014e24a1674

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
