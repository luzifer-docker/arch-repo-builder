FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:94596fe3850126a95813e385feda7834df110c3a8e85466b2d45f9378b2b906d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
