FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b79094b76378e59c960cb11939e2978f2d0285cc05fa99cb3ab76599101a43a2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
