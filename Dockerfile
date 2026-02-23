FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:283d7fe87452b5559f1b2aa639fb23acb45e3d7c759c229c9b6de49bf7e2385e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
