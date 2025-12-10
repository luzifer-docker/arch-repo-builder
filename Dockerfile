FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:d0ededacea0083961d1b4358c2592b7f2295c537fb18dd5b008d296060ad2d2d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
